package com.kome1.lumine.glance

import HomeWidgetGlanceState
import HomeWidgetGlanceStateDefinition
import android.content.Context
import android.net.Uri
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.glance.Button
import androidx.glance.ColorFilter
import androidx.glance.GlanceId
import androidx.glance.GlanceModifier
import androidx.glance.GlanceTheme
import androidx.glance.Image
import androidx.glance.ImageProvider
import androidx.glance.action.ActionParameters
import androidx.glance.action.actionStartActivity
import androidx.glance.action.clickable
import androidx.glance.appwidget.GlanceAppWidget
import androidx.glance.appwidget.action.ActionCallback
import androidx.glance.appwidget.action.actionRunCallback
import androidx.glance.appwidget.cornerRadius
import androidx.glance.appwidget.provideContent
import androidx.glance.background
import androidx.glance.currentState
import androidx.glance.layout.Alignment
import androidx.glance.layout.Box
import androidx.glance.layout.Column
import androidx.glance.layout.Row
import androidx.glance.layout.Spacer
import androidx.glance.layout.fillMaxHeight
import androidx.glance.layout.fillMaxSize
import androidx.glance.layout.fillMaxWidth
import androidx.glance.layout.height
import androidx.glance.layout.padding
import androidx.glance.layout.size
import androidx.glance.layout.width
import androidx.glance.state.GlanceStateDefinition
import androidx.glance.text.Text
import androidx.glance.text.TextAlign
import androidx.glance.text.TextStyle
import com.google.gson.Gson
import com.google.gson.GsonBuilder
import com.google.gson.annotations.SerializedName
import com.kome1.lumine.MainActivity
import com.kome1.lumine.R
import es.antonborri.home_widget.HomeWidgetBackgroundIntent
import es.antonborri.home_widget.actionStartActivity
import java.time.Instant
import java.time.LocalDateTime
import java.time.ZoneId
import java.time.ZoneOffset
import java.time.format.DateTimeFormatter
import java.util.Date

//data class DailyNote(
//    @SerializedName("current_resin") val currentResin: Int,
//    @SerializedName("max_resin") val maxResin: Int,
//    @SerializedName("resin_recovery_time") val resinRecoveryTime: String
//)

data class DailyNote(
    @SerializedName("current_resin") val currentResin: Int,
    @SerializedName("max_resin") val maxResin: Int,
    @SerializedName("resin_recovery_time") val resinRecoveryTime: String,
    @SerializedName("finished_task_num") val finishedTaskNum: Int,
    @SerializedName("total_task_num") val totalTaskNum: Int,
    @SerializedName("is_extra_task_reward_received") val isExtraTaskRewardReceived: Boolean,
    @SerializedName("remain_resin_discount_num") val remainResinDiscountNum: Int,
    @SerializedName("resin_discount_num_limit") val resinDiscountNumLimit: Int,
    @SerializedName("current_expedition_num") val currentExpeditionNum: Int,
    @SerializedName("max_expedition_num") val maxExpeditionNum: Int,
    @SerializedName("expeditions") val expeditions: List<Expedition>,
    @SerializedName("current_home_coin") val currentHomeCoin: Int,
    @SerializedName("max_home_coin") val maxHomeCoin: Int,
    @SerializedName("home_coin_recovery_time") val homeCoinRecoveryTime: String,
    @SerializedName("calendar_url") val calendarUrl: String,
    @SerializedName("transformer") val transformer: Transformer,
    @SerializedName("daily_task") val dailyTask: DailyTask,
    @SerializedName("archon_quest_progress") val archonQuestProgress: ArchonQuestProgress
)

data class Expedition(
    @SerializedName("avatar_side_icon") val avatarSideIcon: String,
    @SerializedName("status") val status: String,
    @SerializedName("remained_time") val remainedTime: String
)

data class Transformer(
    @SerializedName("obtained") val obtained: Boolean,
    @SerializedName("recovery_time") val recoveryTime: RecoveryTime,
    @SerializedName("wiki") val wiki: String,
    @SerializedName("noticed") val noticed: Boolean,
    @SerializedName("latest_job_id") val latestJobId: String
)

data class RecoveryTime(
    @SerializedName("Day") val day: Int,
    @SerializedName("Hour") val hour: Int,
    @SerializedName("Minute") val minute: Int,
    @SerializedName("Second") val second: Int,
    @SerializedName("reached") val reached: Boolean
)

data class DailyTask(
    @SerializedName("total_num") val totalNum: Int,
    @SerializedName("finished_num") val finishedNum: Int,
    @SerializedName("is_extra_task_reward_received") val isExtraTaskRewardReceived: Boolean,
    @SerializedName("task_rewards") val taskRewards: List<TaskReward>,
    @SerializedName("attendance_rewards") val attendanceRewards: List<AttendanceReward>,
    @SerializedName("attendance_visible") val attendanceVisible: Boolean,
    @SerializedName("stored_attendance") val storedAttendance: String,
    @SerializedName("stored_attendance_refresh_countdown") val storedAttendanceRefreshCountdown: Int
)

data class TaskReward(
    @SerializedName("status") val status: String
)

data class AttendanceReward(
    @SerializedName("status") val status: String,
    @SerializedName("progress") val progress: Int
)

data class ArchonQuestProgress(
    @SerializedName("list") val list: List<Quest>,
    @SerializedName("is_open_archon_quest") val isOpenArchonQuest: Boolean,
    @SerializedName("is_finish_all_mainline") val isFinishAllMainline: Boolean,
    @SerializedName("is_finish_all_interchapter") val isFinishAllInterchapter: Boolean,
    @SerializedName("wiki_url") val wikiUrl: String
)

data class Quest(
    @SerializedName("status") val status: String,
    @SerializedName("chapter_num") val chapterNum: String,
    @SerializedName("chapter_title") val chapterTitle: String,
    @SerializedName("id") val id: Int,
    @SerializedName("chapter_type") val chapterType: Int
)

class AppWidget : GlanceAppWidget() {

    override val stateDefinition: GlanceStateDefinition<*>?
        get() = HomeWidgetGlanceStateDefinition()

    override suspend fun provideGlance(context: Context, id: GlanceId) {
        provideContent {
            GlanceTheme {
                GlanceContent(context, currentState())
            }
        }
    }

    @Composable
    private fun GlanceContent(context: Context, currentState: HomeWidgetGlanceState) {
        val prefs = currentState.preferences
        val dailyNoteData = prefs.getString("daily_note_data", "")
        val lastUpdate = prefs.getString("last_update", "No Update")

        if (dailyNoteData.isNullOrBlank()) return Box(
            modifier = GlanceModifier
                .background(GlanceTheme.colors.background)
                .padding(16.dp)
                .fillMaxWidth()
                .height(180.dp)
                .clickable(
                    onClick = actionStartActivity<MainActivity>(context)
                ),
        ) {
            Column(
                modifier = GlanceModifier.fillMaxSize()
            ) {
                WidgetHeader(lastUpdate = lastUpdate.toString())
                Spacer(modifier = GlanceModifier.defaultWeight())
                Text(
                    text = "Data Not Found",
                    style = TextStyle(
                        fontSize = 32.sp,
                        color = GlanceTheme.colors.onBackground
                    )
                )
                Spacer(modifier = GlanceModifier.defaultWeight())
            }
        }

        val gson = GsonBuilder()
            .serializeNulls()  // null値を含める
            .create()


        val dailyNote: DailyNote = gson.fromJson(dailyNoteData, DailyNote::class.java)

        val formatter = DateTimeFormatter.ofPattern("M/d H:mm")
        val dateTime = Instant.ofEpochSecond(LocalDateTime.now().toEpochSecond(ZoneOffset.UTC) + dailyNote.resinRecoveryTime.toLong()).atZone(ZoneId.of("UTC"))
        val resinRecoveryTime = dateTime.format(formatter)

        Box(
            modifier = GlanceModifier
                .background(GlanceTheme.colors.background)
                .padding(16.dp)
                .fillMaxWidth()
                .height(180.dp)
                .clickable(
                    onClick = actionStartActivity<MainActivity>(context)
                )
        ) {
            Column(
                horizontalAlignment = Alignment.Horizontal.CenterHorizontally,
                modifier = GlanceModifier
                    .fillMaxSize()
            ) {
                WidgetHeader(lastUpdate = lastUpdate.toString())
                Row(
                    modifier = GlanceModifier.fillMaxWidth(),
                    verticalAlignment = Alignment.Vertical.Bottom
                ) {
                    Column(
                        modifier = GlanceModifier.fillMaxHeight()
                    ) {
                        Spacer(modifier = GlanceModifier.defaultWeight())
                        Row {
                            Image(
                                provider = ImageProvider(R.drawable.quest),
                                contentDescription = "Quest Icon",
                                colorFilter = ColorFilter.tint(GlanceTheme.colors.onBackground),
                                modifier = GlanceModifier.size(24.dp)
                            )
                            Text(
                                text = if (dailyNote.archonQuestProgress.isFinishAllMainline) "完了" else dailyNote.archonQuestProgress.list.first().chapterNum,
                                style = TextStyle(
                                    fontSize = 18.sp,
                                    color = GlanceTheme.colors.onBackground
                                )
                            )
                        }
                        Spacer(modifier = GlanceModifier.height(8.dp))
                        Row(
                            verticalAlignment = Alignment.Vertical.CenterVertically
                        ) {
                            Image(
                                provider = ImageProvider(R.drawable.resin),
                                contentDescription = "Resin Icon",
                                modifier = GlanceModifier
                                    .size(36.dp)
                            )
                            Spacer(
                                modifier = GlanceModifier.width(4.dp)
                            )
                            Row {
                                Text(
                                    text = "${dailyNote.currentResin}",
                                    style = TextStyle(
                                        fontSize = 36.sp,
                                        color = GlanceTheme.colors.onBackground
                                    )
                                )
                                Text(
                                    text = "/${dailyNote.maxResin}",
                                    style = TextStyle(
                                        fontSize = 20.sp,
                                        color = GlanceTheme.colors.onBackground,
                                    )
                                )
                            }
                        }
                        Text(
                            text = if (dailyNote.currentResin == dailyNote.maxResin) "上限に達しました" else "全回復予定: $resinRecoveryTime",
                            style = TextStyle(
                                color = GlanceTheme.colors.onBackground
                            )
                        )
                    }
                    Spacer(modifier = GlanceModifier.defaultWeight())
                    Column(
                        modifier = GlanceModifier.fillMaxHeight(),
                        verticalAlignment = Alignment.Vertical.Bottom
                    ) {
                        Row(
                            verticalAlignment = Alignment.Vertical.CenterVertically,
                        ) {
                            Column {
                                Row(
                                    verticalAlignment = Alignment.Vertical.CenterVertically
                                ) {
                                    Image(
                                        provider = ImageProvider(R.drawable.task),
                                        contentDescription = "Task Icon",
                                        modifier = GlanceModifier.size(24.dp)
                                    )
                                    Text(
                                        text = "${dailyNote.finishedTaskNum}/${dailyNote.totalTaskNum}",
                                        style = TextStyle(
                                            fontSize = 18.sp,
                                            color = GlanceTheme.colors.onBackground
                                        )
                                    )
                                }
                                Spacer(modifier = GlanceModifier.height(16.dp))
                                Row(
                                    verticalAlignment = Alignment.Vertical.CenterVertically
                                ) {
                                    Image(
                                        provider = ImageProvider(R.drawable.discount),
                                        contentDescription = "Discount Icon",
                                        modifier = GlanceModifier.size(24.dp)
                                    )
                                    Text(
                                        text = "${dailyNote.resinDiscountNumLimit - dailyNote.remainResinDiscountNum}/${dailyNote.resinDiscountNumLimit}",
                                        style = TextStyle(
                                            fontSize = 18.sp,
                                            color = GlanceTheme.colors.onBackground
                                        )
                                    )
                                }
                            }
                            Spacer(modifier = GlanceModifier.width(16.dp))
                            Column {
                                Row(
                                    verticalAlignment = Alignment.Vertical.CenterVertically
                                ) {
                                    Image(
                                        provider = ImageProvider(R.drawable.expedition),
                                        contentDescription = "Expedition Icon",
                                        modifier = GlanceModifier.size(24.dp)
                                    )
                                    Text(
                                        text = "${dailyNote.currentExpeditionNum}/${dailyNote.maxExpeditionNum}",
                                        style = TextStyle(
                                            fontSize = 18.sp,
                                            color = GlanceTheme.colors.onBackground
                                        )
                                    )
                                }
                                Spacer(modifier = GlanceModifier.height(16.dp))
                                Row(
                                    verticalAlignment = Alignment.Vertical.CenterVertically
                                ) {
                                    Image(
                                        provider = ImageProvider(R.drawable.home_coin),
                                        contentDescription = "Home Coin Icon",
                                        modifier = GlanceModifier.size(24.dp)
                                    )
                                    Text(
                                        text = "${dailyNote.currentHomeCoin}",
                                        style = TextStyle(
                                            fontSize = 18.sp,
                                            color = GlanceTheme.colors.onBackground
                                        )
                                    )
                                }
                            }
                        }
                        Spacer(modifier = GlanceModifier.height(16.dp))
                        Row {
                            Image(
                                provider = ImageProvider(R.drawable.transformer),
                                contentDescription = "Transformer Icon",
                                modifier = GlanceModifier.size(24.dp)
                            )
                            Text(
                                text = if (dailyNote.transformer.recoveryTime.reached) "準備完了"
                                else if (dailyNote.transformer.recoveryTime.day > 0) "${dailyNote.transformer.recoveryTime.day}日"
                                else if (dailyNote.transformer.recoveryTime.hour > 0) "${dailyNote.transformer.recoveryTime.hour}時間"
                                else if (dailyNote.transformer.recoveryTime.minute > 0) "${dailyNote.transformer.recoveryTime.minute}分"
                                else "１分未満",
                                style = TextStyle(
                                    fontSize = 16.sp,
                                    color = GlanceTheme.colors.onBackground
                                )
                            )
                        }
                    }
                }
            }
        }
    }
}

class ReloadAction : ActionCallback {
    override suspend fun onAction(
        context: Context,
        glanceId: GlanceId,
        parameters: ActionParameters
    ) {
        val backgroundIntent =
            HomeWidgetBackgroundIntent.getBroadcast(
                context, Uri.parse("lumine://reload"))
        backgroundIntent.send()
    }
}

@Composable
fun WidgetHeader(lastUpdate: String) {
    Row(
        modifier = GlanceModifier.fillMaxWidth(),
        verticalAlignment = Alignment.Vertical.CenterVertically
    ) {
        Text(
            text = "リアルタイムノート",
            style = TextStyle(
                fontSize = 14.sp,
                color = GlanceTheme.colors.onBackground
            )
        )
        Spacer(modifier = GlanceModifier.defaultWeight())
        Text(
            text = "最終更新: $lastUpdate",
            style = TextStyle(
                fontSize = 14.sp,
                color = GlanceTheme.colors.onBackground
            )
        )
        Image(
            provider = ImageProvider(R.drawable.ic_update),
            contentDescription = "Update Icon",
            colorFilter = ColorFilter.tint(GlanceTheme.colors.onBackground),
            modifier = GlanceModifier
                .size(20.dp)
                .clickable(
                    onClick = actionRunCallback<ReloadAction>()
                )
        )
    }
}