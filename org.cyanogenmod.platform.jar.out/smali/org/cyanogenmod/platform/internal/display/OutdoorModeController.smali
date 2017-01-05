.class public Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;
.super Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;
.source "OutdoorModeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/platform/internal/display/OutdoorModeController$1;
    }
.end annotation


# static fields
.field private static final SENSOR_WINDOW_MS:I = 0xbb8


# instance fields
.field private final mDefaultAutoOutdoorMode:Z

.field private final mDefaultOutdoorLux:I

.field private final mHardware:Lcyanogenmod/hardware/CMHardwareManager;

.field private mIsOutdoor:Z

.field private mIsSensorEnabled:Z

.field private final mListener:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TransitionListener;

.field private mLuxObserver:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

.field private final mSelfManaged:Z

.field private final mUseOutdoorMode:Z


# direct methods
.method static synthetic -get0(Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;)Z
    .registers 2

    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mIsOutdoor:Z

    return v0
.end method

.method static synthetic -set0(Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mIsOutdoor:Z

    return p1
.end method

.method static synthetic -wrap0(Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;)V
    .registers 1

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->updateOutdoorMode()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 222
    new-instance v0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController$1;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController$1;-><init>(Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;)V

    .line 221
    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mListener:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TransitionListener;

    .line 56
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v0

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    .line 57
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mUseOutdoorMode:Z

    .line 58
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mUseOutdoorMode:Z

    if-eqz v0, :cond_47

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v0}, Lcyanogenmod/hardware/CMHardwareManager;->isSunlightEnhancementSelfManaged()Z

    move-result v0

    :goto_26
    iput-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mSelfManaged:Z

    .line 60
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 61
    const v1, 0x3f070003

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mDefaultOutdoorLux:I

    .line 62
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 63
    const v1, 0x3f050004

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mDefaultAutoOutdoorMode:Z

    .line 53
    return-void

    .line 58
    :cond_47
    const/4 v0, 0x0

    goto :goto_26
.end method

.method private declared-synchronized updateOutdoorMode()V
    .registers 5

    .prologue
    monitor-enter p0

    .line 177
    :try_start_1
    iget-boolean v2, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mUseOutdoorMode:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_48

    if-nez v2, :cond_7

    monitor-exit p0

    .line 178
    return-void

    .line 181
    :cond_7
    :try_start_7
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->updateSensorState()V

    .line 188
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 189
    const/4 v0, 0x0

    .line 191
    .local v0, "enabled":Z
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->isLowPowerMode()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 192
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->getMode()I

    move-result v1

    .line 194
    .local v1, "mode":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_28

    .line 195
    const/4 v0, 0x1

    .line 217
    .end local v1    # "mode":I
    :cond_1f
    :goto_1f
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const/16 v3, 0x100

    invoke-virtual {v2, v3, v0}, Lcyanogenmod/hardware/CMHardwareManager;->set(IZ)Z
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_48

    .end local v0    # "enabled":Z
    :cond_26
    monitor-exit p0

    .line 176
    return-void

    .line 196
    .restart local v0    # "enabled":Z
    .restart local v1    # "mode":I
    :cond_28
    :try_start_28
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->isAutomaticOutdoorModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 200
    iget-boolean v2, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mSelfManaged:Z

    if-eqz v2, :cond_34

    .line 201
    const/4 v0, 0x1

    goto :goto_1f

    .line 202
    :cond_34
    iget-boolean v2, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mIsOutdoor:Z

    if-eqz v2, :cond_1f

    .line 204
    const/4 v2, 0x4

    if-ne v1, v2, :cond_3d

    .line 207
    const/4 v0, 0x1

    goto :goto_1f

    .line 208
    :cond_3d
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1f

    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->isNight()Z
    :try_end_43
    .catchall {:try_start_28 .. :try_end_43} :catchall_48

    move-result v2

    if-nez v2, :cond_1f

    .line 212
    const/4 v0, 0x1

    goto :goto_1f

    .end local v0    # "enabled":Z
    .end local v1    # "mode":I
    :catchall_48
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized updateSensorState()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    .line 143
    :try_start_2
    iget-boolean v3, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mUseOutdoorMode:Z

    if-eqz v3, :cond_a

    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mLuxObserver:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_48

    if-nez v3, :cond_c

    :cond_a
    monitor-exit p0

    .line 144
    return-void

    .line 143
    :cond_c
    :try_start_c
    iget-boolean v3, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mSelfManaged:Z

    if-nez v3, :cond_a

    .line 150
    const/4 v1, 0x0

    .line 152
    .local v1, "sensorEnabled":Z
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->isLowPowerMode()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 164
    :cond_1d
    :goto_1d
    iget-boolean v3, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mIsSensorEnabled:Z

    if-eq v3, v1, :cond_2c

    .line 165
    iput-boolean v1, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mIsSensorEnabled:Z

    .line 166
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mLuxObserver:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    if-eqz v1, :cond_29

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mListener:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TransitionListener;

    :cond_29
    invoke-virtual {v3, v2}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->setTransitionListener(Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TransitionListener;)V
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_48

    :cond_2c
    monitor-exit p0

    .line 142
    return-void

    .line 153
    :cond_2e
    :try_start_2e
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->isAutomaticOutdoorModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 154
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->getMode()I

    move-result v0

    .line 155
    .local v0, "mode":I
    const/4 v3, 0x4

    if-ne v0, v3, :cond_3d

    .line 157
    const/4 v1, 0x1

    goto :goto_1d

    .line 158
    :cond_3d
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1d

    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->isNight()Z
    :try_end_43
    .catchall {:try_start_2e .. :try_end_43} :catchall_48

    move-result v3

    if-nez v3, :cond_1d

    .line 160
    const/4 v1, 0x1

    goto :goto_1d

    .end local v0    # "mode":I
    .end local v1    # "sensorEnabled":Z
    :catchall_48
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 126
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 127
    const-string/jumbo v0, "OutdoorModeController Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mSelfManaged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mSelfManaged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mSelfManaged:Z

    if-nez v0, :cond_b6

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mDefaultOutdoorLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mDefaultOutdoorLux:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 132
    const-string/jumbo v0, "  OutdoorModeController State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    mAutoOutdoorMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->isAutomaticOutdoorModeEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    mIsOutdoor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mIsOutdoor:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    mIsNight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->isNight()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    hardware state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Lcyanogenmod/hardware/CMHardwareManager;->get(I)Z

    move-result v1

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    :cond_b6
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mLuxObserver:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    invoke-virtual {v0, p1}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;->dump(Ljava/io/PrintWriter;)V

    .line 125
    return-void
.end method

.method public getCapabilities(Ljava/util/BitSet;)Z
    .registers 3
    .param p1, "caps"    # Ljava/util/BitSet;

    .prologue
    .line 83
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mUseOutdoorMode:Z

    if-eqz v0, :cond_11

    .line 84
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 85
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mSelfManaged:Z

    if-eqz v0, :cond_11

    .line 86
    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 89
    :cond_11
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mUseOutdoorMode:Z

    return v0
.end method

.method getDefaultAutoOutdoorMode()Z
    .registers 2

    .prologue
    .line 252
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mDefaultAutoOutdoorMode:Z

    return v0
.end method

.method isAutomaticOutdoorModeEnabled()Z
    .registers 3

    .prologue
    .line 246
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mUseOutdoorMode:Z

    if-eqz v0, :cond_10

    .line 247
    const-string/jumbo v0, "display_auto_outdoor_mode"

    .line 248
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->getDefaultAutoOutdoorMode()Z

    move-result v1

    .line 247
    invoke-virtual {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 246
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected declared-synchronized onScreenStateChanged()V
    .registers 4

    .prologue
    monitor-enter p0

    .line 104
    :try_start_1
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mUseOutdoorMode:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_29

    if-nez v0, :cond_7

    monitor-exit p0

    .line 105
    return-void

    .line 109
    :cond_7
    :try_start_7
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->updateSensorState()V

    .line 113
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mSelfManaged:Z
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_29

    if-eqz v0, :cond_16

    :cond_14
    :goto_14
    monitor-exit p0

    .line 103
    return-void

    .line 113
    :cond_16
    :try_start_16
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->getMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_14

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mIsOutdoor:Z

    .line 115
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const/16 v1, 0x100

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcyanogenmod/hardware/CMHardwareManager;->set(IZ)Z
    :try_end_28
    .catchall {:try_start_16 .. :try_end_28} :catchall_29

    goto :goto_14

    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSettingsChanged(Landroid/net/Uri;)V
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    monitor-enter p0

    .line 121
    :try_start_1
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->updateOutdoorMode()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    .line 120
    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onStart()V
    .registers 6

    .prologue
    .line 68
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mUseOutdoorMode:Z

    if-nez v0, :cond_5

    .line 69
    return-void

    .line 72
    :cond_5
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mSelfManaged:Z

    if-nez v0, :cond_1d

    .line 73
    new-instance v0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 74
    iget v3, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mDefaultOutdoorLux:I

    int-to-float v3, v3

    const/16 v4, 0xbb8

    .line 73
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;-><init>(Landroid/content/Context;Landroid/os/Looper;FI)V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mLuxObserver:Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;

    .line 77
    :cond_1d
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    .line 78
    const-string/jumbo v1, "display_auto_outdoor_mode"

    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 77
    invoke-virtual {p0, v0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->registerSettings([Landroid/net/Uri;)V

    .line 67
    return-void
.end method

.method protected onTwilightUpdated()V
    .registers 1

    .prologue
    .line 99
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->updateOutdoorMode()V

    .line 98
    return-void
.end method

.method protected onUpdate()V
    .registers 1

    .prologue
    .line 94
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->updateOutdoorMode()V

    .line 93
    return-void
.end method

.method setAutomaticOutdoorModeEnabled(Z)Z
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 238
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->mUseOutdoorMode:Z

    if-nez v0, :cond_6

    .line 239
    const/4 v0, 0x0

    return v0

    .line 241
    :cond_6
    const-string/jumbo v0, "display_auto_outdoor_mode"

    invoke-virtual {p0, v0, p1}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->putBoolean(Ljava/lang/String;Z)V

    .line 242
    const/4 v0, 0x1

    return v0
.end method
