package com.kome1.lumine.glance

import HomeWidgetGlanceState
import HomeWidgetGlanceStateDefinition
import android.content.Context
import android.graphics.BitmapFactory
import android.graphics.drawable.Icon
import android.net.Uri
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.TextUnit
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.glance.GlanceId
import androidx.glance.GlanceModifier
import androidx.glance.Image
import androidx.glance.ImageProvider
import androidx.glance.action.ActionParameters
import androidx.glance.action.clickable
import androidx.glance.appwidget.GlanceAppWidget
import androidx.glance.appwidget.action.ActionCallback
import androidx.glance.appwidget.action.actionRunCallback
import androidx.glance.appwidget.provideContent
import androidx.glance.background
import androidx.glance.currentState
import androidx.glance.layout.Alignment
import androidx.glance.layout.Box
import androidx.glance.layout.Column
import androidx.glance.layout.ContentScale
import androidx.glance.layout.Row
import androidx.glance.layout.Spacer
import androidx.glance.layout.fillMaxHeight
import androidx.glance.layout.fillMaxSize
import androidx.glance.layout.fillMaxWidth
import androidx.glance.layout.height
import androidx.glance.layout.padding
import androidx.glance.layout.width
import androidx.glance.layout.wrapContentWidth
import androidx.glance.text.FontWeight
import androidx.glance.text.Text
import androidx.glance.text.TextStyle
import androidx.glance.unit.ColorProvider
import es.antonborri.home_widget.HomeWidgetBackgroundIntent
import es.antonborri.home_widget.actionStartActivity
import com.kome1.lumine.MainActivity
import com.kome1.lumine.R
import java.nio.file.WatchEvent.Modifier

class HomeWidgetGlanceAppWidget : GlanceAppWidget() {

  /** Needed for Updating */
  override val stateDefinition = HomeWidgetGlanceStateDefinition()

  override suspend fun provideGlance(context: Context, id: GlanceId) {
    provideContent { GlanceContent(context, currentState()) }
  }

  @Composable
  private fun GlanceContent(context: Context, currentState: HomeWidgetGlanceState) {
    val data = currentState.preferences

    val resinCount = data.getString("resinCount", "-")!!
    val resinRecoveryTime = data.getString("resinRecoveryTime", "-")!!
    val homeCoinCount = data.getString("homeCoinCount", "-")!!
    val transformerRecoveryTime = data.getString("transformerRecoveryTime", "-")!!
    val finishedTask = data.getString("finishedTask", "-")!!
    val expeditionStatus = data.getString("expeditionStatus", "-")!!
    val lastUpdate = data.getString("lastUpdate", "-")!!

    Box(
        modifier = GlanceModifier.background(Color.Black)
            .height(170.dp)
            .fillMaxWidth()
            .clickable(onClick = actionStartActivity<MainActivity>(context))) {
        Column(
            modifier = GlanceModifier.fillMaxSize()
                .padding(12.dp),
        ) {
            Text(
                text = "リアルタイムノート",
                style = TextStyle(
                    fontSize = 15.sp,
                    color = ColorProvider(color = Color.White)
                )
            )
            Spacer(modifier = GlanceModifier.defaultWeight())
            Row(
                modifier = GlanceModifier.fillMaxWidth(),
                verticalAlignment = Alignment.CenterVertically
            ) {
                Row(
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Image(
                        modifier = GlanceModifier.width(48.dp)
                            .height(48.dp),
                        provider = ImageProvider(R.drawable.resin),
                        contentScale = ContentScale.Crop,
                        contentDescription = "Resin Image"
                    )
                    Column(
                        modifier = GlanceModifier.wrapContentWidth()
                            .padding(start = 8.dp)
                    ) {
                        Text(
                            text = resinCount,
                            style = TextStyle(
                                fontWeight = FontWeight.Bold,
                                fontSize = 23.sp,
                                color = ColorProvider(color = Color.White)
                            )
                        )
                        Text(
                            text = resinRecoveryTime,
                            style = TextStyle(
                                fontSize = 15.sp,
                                color = ColorProvider(color = Color.White)
                            )
                        )
                    }
                }
                Spacer(modifier = GlanceModifier.defaultWeight())
                Column(
                    modifier = GlanceModifier.wrapContentWidth(),
                    verticalAlignment = Alignment.Vertical.CenterVertically,
                ) {
                    Row(
                        modifier = GlanceModifier.clickable(
                            onClick = actionRunCallback<InteractiveAction>()
                        ),
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Image(
                            modifier = GlanceModifier.width(24.dp)
                                .height(24.dp)
                                .padding(end =  4.dp),
                            provider = ImageProvider(R.drawable.ic_update),
                            contentScale = ContentScale.Crop,
                            contentDescription = "Update Icon",
                        )
                        Text(
                            text = lastUpdate,
                            style = TextStyle(
                                fontSize = 15.sp,
                                color = ColorProvider(color = Color.White)
                            )
                        )
                    }
                    Spacer(modifier = GlanceModifier.defaultWeight())
                    Row(
                        modifier = GlanceModifier.clickable(
                            onClick = actionStartActivity<MainActivity>(
                                context,
                                Uri.parse("lumine://open?page=dailynote")
                            )
                        ),
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Image(
                            modifier = GlanceModifier.width(24.dp)
                                .height(24.dp)
                                .padding(end =  4.dp),
                            provider = ImageProvider(R.drawable.daily_bonus),
                            contentScale = ContentScale.Crop,
                            contentDescription = "Daily Bonus Icon",
                        )
                        Text(
                            text = "デイリー",
                            style = TextStyle(
                                fontSize = 15.sp,
                                color = ColorProvider(color = Color.White)
                            )
                        )
                    }
                }
            }
            Spacer(modifier = GlanceModifier.defaultWeight())
            Row(
                modifier = GlanceModifier.fillMaxWidth(),
                verticalAlignment = Alignment.CenterVertically,
            ) {
                Row(
                    verticalAlignment = Alignment.CenterVertically,
                ) {
                    Image(
                        modifier = GlanceModifier.width(24.dp)
                            .height(24.dp)
                            .padding(end =  4.dp),
                        provider = ImageProvider(R.drawable.home_coin),
                        contentScale = ContentScale.Crop,
                        contentDescription = "Coin Icon",
                    )
                    Text(
                        text = homeCoinCount,
                        style = TextStyle(
                            fontSize = 15.sp,
                            color = ColorProvider(color = Color.White)
                        )
                    )
                }
                Spacer(modifier = GlanceModifier.defaultWeight())
                Row(
                    verticalAlignment = Alignment.CenterVertically,
                ) {
                    Image(
                        modifier = GlanceModifier.width(24.dp)
                            .height(24.dp)
                            .padding(end =  4.dp),
                        provider = ImageProvider(R.drawable.transformer),
                        contentScale = ContentScale.Crop,
                        contentDescription = "Transformer Icon",
                    )
                    Text(
                        text = transformerRecoveryTime,
                        style = TextStyle(
                            fontSize = 15.sp,
                            color = ColorProvider(color = Color.White)
                        )
                    )
                }
                Spacer(modifier = GlanceModifier.defaultWeight())
                Row(
                    verticalAlignment = Alignment.CenterVertically,
                ) {
                    Image(
                        modifier = GlanceModifier.width(24.dp)
                            .height(24.dp)
                            .padding(end =  4.dp),
                        provider = ImageProvider(R.drawable.expedition),
                        contentScale = ContentScale.Crop,
                        contentDescription = "Expedition Icon",
                    )
                    Text(
                        text = expeditionStatus,
                        style = TextStyle(
                            fontSize = 15.sp,
                            color = ColorProvider(color = Color.White)
                        )
                    )
                }
                Spacer(modifier = GlanceModifier.defaultWeight())
                Row(
                    verticalAlignment = Alignment.CenterVertically,
                ) {
                    Image(
                        modifier = GlanceModifier.width(24.dp)
                            .height(24.dp)
                            .padding(end =  4.dp),
                        provider = ImageProvider(R.drawable.task),
                        contentScale = ContentScale.Crop,
                        contentDescription = "Task Icon",
                    )
                    Text(
                        text = finishedTask,
                        style = TextStyle(
                            fontSize = 15.sp,
                            color = ColorProvider(color = Color.White)
                        )
                    )
                }
            }
        }
    }
  }
}

class InteractiveAction : ActionCallback {
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

class OpenDailyBonusAction : ActionCallback {
    override suspend fun onAction(
        context: Context,
        glanceId: GlanceId,
        parameters: ActionParameters
    ) {
        val backgroundIntent =
            HomeWidgetBackgroundIntent.getBroadcast(
                context, Uri.parse("lumine://dailybonus"))
        backgroundIntent.send()
    }
}