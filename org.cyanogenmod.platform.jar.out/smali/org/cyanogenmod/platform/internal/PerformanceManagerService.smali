.class public Lorg/cyanogenmod/platform/internal/PerformanceManagerService;
.super Lorg/cyanogenmod/platform/internal/CMSystemService;
.source "PerformanceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;,
        Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;,
        Lorg/cyanogenmod/platform/internal/PerformanceManagerService$1;,
        Lorg/cyanogenmod/platform/internal/PerformanceManagerService$2;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_CPU_BOOST_TIME:I = 0x4c4b40

.field private static final MSG_CPU_BOOST:I = 0x1

.field private static final MSG_LAUNCH_BOOST:I = 0x2

.field private static final MSG_SET_PROFILE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PerformanceManager"


# instance fields
.field private final POWER_FEATURE_SUPPORTED_PROFILES:I

.field private final POWER_HINT_CPU_BOOST:I

.field private final POWER_HINT_LAUNCH_BOOST:I

.field private final POWER_HINT_SET_PROFILE:I

.field private final mBinder:Landroid/os/IBinder;

.field private final mContext:Landroid/content/Context;

.field private mCurrentActivityName:Ljava/lang/String;

.field private mCurrentProfile:I

.field private final mHandler:Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;

.field private final mHandlerThread:Lcom/android/server/ServiceThread;

.field private mLowPowerModeEnabled:Z

.field private final mLowPowerModeListener:Landroid/os/PowerManagerInternal$LowPowerModeListener;

.field private mNumProfiles:I

.field private mPatterns:[Ljava/util/regex/Pattern;

.field private mPm:Landroid/os/PowerManagerInternal;

.field private mProfiles:[I


# direct methods
.method static synthetic -get0(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)I
    .registers 2

    iget v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mCurrentProfile:I

    return v0
.end method

.method static synthetic -get1(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;
    .registers 2

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mHandler:Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;

    return-object v0
.end method

.method static synthetic -get2(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mLowPowerModeEnabled:Z

    return v0
.end method

.method static synthetic -get3(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)I
    .registers 2

    iget v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mNumProfiles:I

    return v0
.end method

.method static synthetic -get4(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)Landroid/os/PowerManagerInternal;
    .registers 2

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mPm:Landroid/os/PowerManagerInternal;

    return-object v0
.end method

.method static synthetic -set0(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mCurrentActivityName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mLowPowerModeEnabled:Z

    return p1
.end method

.method static synthetic -wrap0(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;I)Z
    .registers 3
    .param p1, "profile"    # I

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->getProfileHasAppProfilesInternal(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;IZ)Z
    .registers 4
    .param p1, "profile"    # I
    .param p2, "fromUser"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->setPowerProfileInternal(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)I
    .registers 2

    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->getUserProfile()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;Z)V
    .registers 2
    .param p1, "fromUser"    # Z

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->applyProfile(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;I)V
    .registers 2
    .param p1, "duration"    # I

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->cpuBoostInternal(I)V

    return-void
.end method

.method static synthetic -wrap5(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;ILjava/lang/String;)V
    .registers 3
    .param p1, "pid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->native_launchBoost(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 76
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMSystemService;-><init>(Landroid/content/Context;)V

    .line 50
    iput-object v4, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mPatterns:[Ljava/util/regex/Pattern;

    .line 51
    iput-object v4, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mProfiles:[I

    .line 54
    const/4 v3, -0x1

    iput v3, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mCurrentProfile:I

    .line 55
    iput v6, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mNumProfiles:I

    .line 61
    const/16 v3, 0x10

    iput v3, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->POWER_HINT_CPU_BOOST:I

    .line 62
    const/16 v3, 0x11

    iput v3, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->POWER_HINT_LAUNCH_BOOST:I

    .line 63
    const/16 v3, 0x30

    iput v3, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->POWER_HINT_SET_PROFILE:I

    .line 65
    const/16 v3, 0x1000

    iput v3, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->POWER_FEATURE_SUPPORTED_PROFILES:I

    .line 68
    iput-boolean v6, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mLowPowerModeEnabled:Z

    .line 69
    iput-object v4, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mCurrentActivityName:Ljava/lang/String;

    .line 294
    new-instance v3, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$1;

    invoke-direct {v3, p0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$1;-><init>(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)V

    iput-object v3, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mBinder:Landroid/os/IBinder;

    .line 398
    new-instance v3, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$2;

    invoke-direct {v3, p0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$2;-><init>(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;)V

    iput-object v3, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mLowPowerModeListener:Landroid/os/PowerManagerInternal$LowPowerModeListener;

    .line 78
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mContext:Landroid/content/Context;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 81
    const v4, 0x3f040009

    .line 80
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "activities":[Ljava/lang/String;
    if-eqz v0, :cond_79

    array-length v3, v0

    if-lez v3, :cond_79

    .line 83
    array-length v3, v0

    new-array v3, v3, [Ljava/util/regex/Pattern;

    iput-object v3, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mPatterns:[Ljava/util/regex/Pattern;

    .line 84
    array-length v3, v0

    new-array v3, v3, [I

    iput-object v3, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mProfiles:[I

    .line 85
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4d
    array-length v3, v0

    if-ge v1, v3, :cond_79

    .line 86
    aget-object v3, v0, v1

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "info":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_76

    .line 88
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mPatterns:[Ljava/util/regex/Pattern;

    aget-object v4, v2, v6

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    aput-object v4, v3, v1

    .line 89
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mProfiles:[I

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v1

    .line 85
    :cond_76
    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    .line 100
    .end local v1    # "i":I
    .end local v2    # "info":[Ljava/lang/String;
    :cond_79
    new-instance v3, Lcom/android/server/ServiceThread;

    const-string/jumbo v4, "PerformanceManager"

    .line 101
    const/4 v5, -0x7

    .line 100
    invoke-direct {v3, v4, v5, v6}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v3, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 102
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v3}, Lcom/android/server/ServiceThread;->start()V

    .line 104
    new-instance v3, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;

    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v4}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;-><init>(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;Landroid/os/Looper;)V

    iput-object v3, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mHandler:Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;

    .line 75
    return-void
.end method

.method private applyProfile(Z)V
    .registers 5
    .param p1, "fromUser"    # Z

    .prologue
    .line 273
    iget v1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mNumProfiles:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_6

    .line 275
    return-void

    .line 279
    :cond_6
    iget-boolean v1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mLowPowerModeEnabled:Z

    if-eqz v1, :cond_f

    .line 281
    const/4 v0, 0x0

    .line 291
    .local v0, "profile":I
    :cond_b
    :goto_b
    invoke-direct {p0, v0, p1}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->setPowerProfileInternal(IZ)Z

    .line 272
    return-void

    .line 282
    .end local v0    # "profile":I
    :cond_f
    if-eqz p1, :cond_17

    iget v1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mCurrentProfile:I

    if-nez v1, :cond_17

    .line 283
    const/4 v0, 0x1

    .line 282
    .restart local v0    # "profile":I
    goto :goto_b

    .line 285
    .end local v0    # "profile":I
    :cond_17
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->getUserProfile()I

    move-result v0

    .line 287
    .restart local v0    # "profile":I
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->hasAppProfiles()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->getProfileHasAppProfilesInternal(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 288
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mCurrentActivityName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->getProfileForActivity(Ljava/lang/String;)I

    move-result v0

    goto :goto_b
.end method

.method private cpuBoostInternal(I)V
    .registers 5
    .param p1, "duration"    # I

    .prologue
    const/4 v2, 0x0

    .line 254
    monitor-enter p0

    .line 255
    :try_start_2
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mPm:Landroid/os/PowerManagerInternal;

    if-nez v0, :cond_11

    .line 256
    const-string/jumbo v0, "PerformanceManager"

    const-string/jumbo v1, "System is not ready, dropping cpu boost request"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_23

    monitor-exit p0

    .line 257
    return-void

    :cond_11
    monitor-exit p0

    .line 260
    if-lez p1, :cond_31

    const v0, 0x4c4b40

    if-gt p1, v0, :cond_31

    .line 262
    iget v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mCurrentProfile:I

    if-eqz v0, :cond_22

    .line 263
    iget v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mCurrentProfile:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    .line 264
    :cond_22
    return-void

    .line 254
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0

    .line 266
    :cond_26
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mHandler:Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 253
    :goto_30
    return-void

    .line 268
    :cond_31
    const-string/jumbo v0, "PerformanceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid boost duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30
.end method

.method private getProfileForActivity(Ljava/lang/String;)I
    .registers 4
    .param p1, "componentName"    # Ljava/lang/String;

    .prologue
    .line 243
    if-eqz p1, :cond_1e

    .line 244
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mPatterns:[Ljava/util/regex/Pattern;

    array-length v1, v1

    if-ge v0, v1, :cond_1e

    .line 245
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mPatterns:[Ljava/util/regex/Pattern;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 246
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mProfiles:[I

    aget v1, v1, v0

    return v1

    .line 244
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 250
    .end local v0    # "i":I
    :cond_1e
    const/4 v1, 0x1

    return v1
.end method

.method private getProfileHasAppProfilesInternal(I)Z
    .registers 6
    .param p1, "profile"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 148
    if-ltz p1, :cond_8

    iget v2, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mNumProfiles:I

    if-le p1, v2, :cond_23

    .line 149
    :cond_8
    const-string/jumbo v0, "PerformanceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid profile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return v1

    .line 153
    :cond_23
    if-ne p1, v0, :cond_2c

    .line 154
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mPatterns:[Ljava/util/regex/Pattern;

    if-eqz v2, :cond_2a

    :goto_29
    return v0

    :cond_2a
    move v0, v1

    goto :goto_29

    .line 157
    :cond_2c
    return v1
.end method

.method private getUserProfile()I
    .registers 4

    .prologue
    .line 164
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 165
    const-string/jumbo v1, "performance_profile"

    .line 166
    const/4 v2, 0x1

    .line 164
    invoke-static {v0, v1, v2}, Lcyanogenmod/providers/CMSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private hasAppProfiles()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 142
    iget v2, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mNumProfiles:I

    if-lez v2, :cond_1c

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mPatterns:[Ljava/util/regex/Pattern;

    if-eqz v2, :cond_1c

    .line 143
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 144
    const-string/jumbo v3, "app_perf_profiles_enabled"

    .line 143
    invoke-static {v2, v3, v0}, Lcyanogenmod/providers/CMSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1a

    .line 142
    :goto_19
    return v0

    :cond_1a
    move v0, v1

    .line 143
    goto :goto_19

    :cond_1c
    move v0, v1

    .line 142
    goto :goto_19
.end method

.method private final native native_launchBoost(ILjava/lang/String;)V
.end method

.method private declared-synchronized setPowerProfileInternal(IZ)Z
    .registers 11
    .param p1, "profile"    # I
    .param p2, "fromUser"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    .line 182
    :try_start_3
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mPm:Landroid/os/PowerManagerInternal;

    if-nez v5, :cond_12

    .line 183
    const-string/jumbo v4, "PerformanceManager"

    const-string/jumbo v5, "System is not ready, dropping profile request"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_6b

    monitor-exit p0

    .line 184
    return v1

    .line 186
    :cond_12
    if-ltz p1, :cond_18

    :try_start_14
    iget v5, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mNumProfiles:I

    if-le p1, v5, :cond_34

    .line 187
    :cond_18
    const-string/jumbo v4, "PerformanceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid profile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_14 .. :try_end_32} :catchall_6b

    monitor-exit p0

    .line 188
    return v1

    .line 191
    :cond_34
    :try_start_34
    iget v5, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mCurrentProfile:I

    if-ne p1, v5, :cond_4f

    const/4 v0, 0x1

    .line 193
    .local v0, "isProfileSame":Z
    :goto_39
    if-nez v0, :cond_54

    .line 194
    if-nez p1, :cond_6e

    .line 197
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_40
    .catchall {:try_start_34 .. :try_end_40} :catchall_6b

    move-result-wide v2

    .line 199
    .local v2, "token":J
    :try_start_41
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mPm:Landroid/os/PowerManagerInternal;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/PowerManagerInternal;->setPowerSaveMode(Z)Z
    :try_end_47
    .catchall {:try_start_41 .. :try_end_47} :catchall_66

    move-result v5

    if-nez v5, :cond_51

    .line 203
    :try_start_4a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_6b

    monitor-exit p0

    .line 200
    return v1

    .line 191
    .end local v0    # "isProfileSame":Z
    .end local v2    # "token":J
    :cond_4f
    const/4 v0, 0x0

    .restart local v0    # "isProfileSame":Z
    goto :goto_39

    .line 203
    .restart local v2    # "token":J
    :cond_51
    :try_start_51
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 217
    .end local v2    # "token":J
    :cond_54
    :goto_54
    if-eqz p2, :cond_62

    .line 218
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 219
    const-string/jumbo v6, "performance_profile"

    .line 218
    invoke-static {v5, v6, p1}, Lcyanogenmod/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_62
    .catchall {:try_start_51 .. :try_end_62} :catchall_6b

    .line 222
    :cond_62
    if-eqz v0, :cond_80

    monitor-exit p0

    .line 223
    return v1

    .line 202
    .restart local v2    # "token":J
    :catchall_66
    move-exception v1

    .line 203
    :try_start_67
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 202
    throw v1
    :try_end_6b
    .catchall {:try_start_67 .. :try_end_6b} :catchall_6b

    .end local v0    # "isProfileSame":Z
    .end local v2    # "token":J
    :catchall_6b
    move-exception v1

    monitor-exit p0

    throw v1

    .line 205
    .restart local v0    # "isProfileSame":Z
    :cond_6e
    :try_start_6e
    iget v5, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mCurrentProfile:I

    if-nez v5, :cond_54

    .line 206
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 207
    .restart local v2    # "token":J
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mPm:Landroid/os/PowerManagerInternal;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/PowerManagerInternal;->setPowerSaveMode(Z)Z

    .line 208
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_54

    .line 227
    .end local v2    # "token":J
    :cond_80
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mContext:Landroid/content/Context;

    .line 228
    const-string/jumbo v6, "cyanogenmod.permission.PERFORMANCE_ACCESS"

    const/4 v7, 0x0

    .line 227
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 232
    .restart local v2    # "token":J
    iput p1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mCurrentProfile:I

    .line 234
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mHandler:Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;

    .line 235
    if-eqz p2, :cond_94

    move v1, v4

    .line 234
    :cond_94
    const/4 v6, 0x3

    invoke-virtual {v5, v6, p1, v1}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$PerformanceManagerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 237
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_9f
    .catchall {:try_start_6e .. :try_end_9f} :catchall_6b

    monitor-exit p0

    .line 239
    return v4
.end method


# virtual methods
.method public getFeatureDeclaration()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    const-string/jumbo v0, "org.cyanogenmod.performance"

    return-object v0
.end method

.method public onBootPhase(I)V
    .registers 8
    .param p1, "phase"    # I

    .prologue
    const/4 v3, 0x2

    .line 120
    const/16 v1, 0x1f4

    if-ne p1, v1, :cond_50

    .line 121
    monitor-enter p0

    .line 122
    :try_start_6
    const-class v1, Landroid/os/PowerManagerInternal;

    invoke-virtual {p0, v1}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManagerInternal;

    iput-object v1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mPm:Landroid/os/PowerManagerInternal;

    .line 123
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mPm:Landroid/os/PowerManagerInternal;

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->getFeature(I)I

    move-result v1

    iput v1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mNumProfiles:I

    .line 124
    iget v1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mNumProfiles:I

    if-lez v1, :cond_4f

    .line 125
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->getUserProfile()I

    move-result v0

    .line 126
    .local v0, "profile":I
    if-ne v0, v3, :cond_51

    .line 127
    const-string/jumbo v1, "PerformanceManager"

    const-string/jumbo v2, "Reverting profile %d to %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 128
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 127
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 129
    invoke-direct {p0, v1, v2}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->setPowerProfileInternal(IZ)Z

    .line 135
    :goto_48
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mPm:Landroid/os/PowerManagerInternal;

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mLowPowerModeListener:Landroid/os/PowerManagerInternal$LowPowerModeListener;

    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V
    :try_end_4f
    .catchall {:try_start_6 .. :try_end_4f} :catchall_56

    .end local v0    # "profile":I
    :cond_4f
    monitor-exit p0

    .line 119
    :cond_50
    return-void

    .line 132
    .restart local v0    # "profile":I
    :cond_51
    const/4 v1, 0x0

    :try_start_52
    invoke-direct {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->setPowerProfileInternal(IZ)Z
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_56

    goto :goto_48

    .line 121
    .end local v0    # "profile":I
    :catchall_56
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onStart()V
    .registers 4

    .prologue
    .line 114
    const-string/jumbo v0, "cmperformance"

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 115
    const-class v0, Lcyanogenmod/power/PerformanceManagerInternal;

    new-instance v1, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;-><init>(Lorg/cyanogenmod/platform/internal/PerformanceManagerService;Lorg/cyanogenmod/platform/internal/PerformanceManagerService$LocalService;)V

    invoke-virtual {p0, v0, v1}, Lorg/cyanogenmod/platform/internal/PerformanceManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 113
    return-void
.end method
