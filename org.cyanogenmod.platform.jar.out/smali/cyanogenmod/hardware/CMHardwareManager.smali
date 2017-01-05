.class public final Lcyanogenmod/hardware/CMHardwareManager;
.super Ljava/lang/Object;
.source "CMHardwareManager.java"


# static fields
.field private static final BOOLEAN_FEATURES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final COLOR_CALIBRATION_BLUE_INDEX:I = 0x2

.field public static final COLOR_CALIBRATION_DEFAULT_INDEX:I = 0x3

.field public static final COLOR_CALIBRATION_GREEN_INDEX:I = 0x1

.field public static final COLOR_CALIBRATION_MAX_INDEX:I = 0x5

.field public static final COLOR_CALIBRATION_MIN_INDEX:I = 0x4

.field public static final COLOR_CALIBRATION_RED_INDEX:I = 0x0

.field public static final FEATURE_ADAPTIVE_BACKLIGHT:I = 0x1

.field public static final FEATURE_AUTO_CONTRAST:I = 0x1000

.field public static final FEATURE_COLOR_ENHANCEMENT:I = 0x2

.field public static final FEATURE_DISPLAY_COLOR_CALIBRATION:I = 0x4

.field public static final FEATURE_DISPLAY_GAMMA_CALIBRATION:I = 0x8

.field public static final FEATURE_DISPLAY_MODES:I = 0x2000

.field public static final FEATURE_HIGH_TOUCH_SENSITIVITY:I = 0x10

.field public static final FEATURE_KEY_DISABLE:I = 0x20

.field public static final FEATURE_LONG_TERM_ORBITS:I = 0x40

.field public static final FEATURE_PERSISTENT_STORAGE:I = 0x4000

.field public static final FEATURE_SERIAL_NUMBER:I = 0x80

.field public static final FEATURE_SUNLIGHT_ENHANCEMENT:I = 0x100

.field public static final FEATURE_TAP_TO_WAKE:I = 0x200

.field public static final FEATURE_THERMAL_MONITOR:I = 0x8000

.field public static final FEATURE_TOUCH_HOVERING:I = 0x800

.field public static final FEATURE_UNIQUE_DEVICE_ID:I = 0x10000

.field public static final FEATURE_VIBRATOR:I = 0x400

.field public static final GAMMA_CALIBRATION_BLUE_INDEX:I = 0x2

.field public static final GAMMA_CALIBRATION_GREEN_INDEX:I = 0x1

.field public static final GAMMA_CALIBRATION_MAX_INDEX:I = 0x4

.field public static final GAMMA_CALIBRATION_MIN_INDEX:I = 0x3

.field public static final GAMMA_CALIBRATION_RED_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CMHardwareManager"

.field public static final VIBRATOR_DEFAULT_INDEX:I = 0x1

.field public static final VIBRATOR_INTENSITY_INDEX:I = 0x0

.field public static final VIBRATOR_MAX_INDEX:I = 0x3

.field public static final VIBRATOR_MIN_INDEX:I = 0x2

.field public static final VIBRATOR_WARNING_INDEX:I = 0x4

.field private static sCMHardwareManagerInstance:Lcyanogenmod/hardware/CMHardwareManager;

.field private static sService:Lcyanogenmod/hardware/ICMHardwareService;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 132
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Integer;

    .line 133
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 134
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 135
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    .line 136
    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 137
    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 138
    const/16 v1, 0x200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 139
    const/16 v1, 0x800

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 140
    const/16 v1, 0x1000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 141
    const v1, 0x8000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 132
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcyanogenmod/hardware/CMHardwareManager;->BOOLEAN_FEATURES:Ljava/util/List;

    .line 40
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 151
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_25

    .line 152
    iput-object v0, p0, Lcyanogenmod/hardware/CMHardwareManager;->mContext:Landroid/content/Context;

    .line 156
    :goto_b
    invoke-static {}, Lcyanogenmod/hardware/CMHardwareManager;->getService()Lcyanogenmod/hardware/ICMHardwareService;

    move-result-object v1

    sput-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 159
    const-string/jumbo v2, "org.cyanogenmod.hardware"

    .line 158
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 159
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 149
    :cond_24
    :goto_24
    return-void

    .line 154
    :cond_25
    iput-object p1, p0, Lcyanogenmod/hardware/CMHardwareManager;->mContext:Landroid/content/Context;

    goto :goto_b

    .line 160
    :cond_28
    const-string/jumbo v1, "CMHardwareManager"

    const-string/jumbo v2, "Unable to get CMHardwareService. The service either crashed, was not started, or the interface has been called to early in SystemServer init"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24
.end method

.method private checkService()Z
    .registers 3

    .prologue
    .line 810
    sget-object v0, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    if-nez v0, :cond_f

    .line 811
    const-string/jumbo v0, "CMHardwareManager"

    const-string/jumbo v1, "not connected to CMHardwareManagerService"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    const/4 v0, 0x0

    return v0

    .line 814
    :cond_f
    const/4 v0, 0x1

    return v0
.end method

.method private getArrayValue([III)I
    .registers 5
    .param p1, "arr"    # [I
    .param p2, "idx"    # I
    .param p3, "defaultValue"    # I

    .prologue
    .line 263
    if-eqz p1, :cond_5

    array-length v0, p1

    if-gt v0, p2, :cond_6

    .line 264
    :cond_5
    return p3

    .line 267
    :cond_6
    aget v0, p1, p2

    return v0
.end method

.method private getDisplayColorCalibrationArray()[I
    .registers 3

    .prologue
    .line 381
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 382
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1}, Lcyanogenmod/hardware/ICMHardwareService;->getDisplayColorCalibration()[I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v1

    return-object v1

    .line 384
    :catch_d
    move-exception v0

    .line 386
    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method

.method private getDisplayGammaCalibrationArray(I)[I
    .registers 4
    .param p1, "idx"    # I

    .prologue
    .line 589
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 590
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1, p1}, Lcyanogenmod/hardware/ICMHardwareService;->getDisplayGammaCalibration(I)[I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v1

    return-object v1

    .line 592
    :catch_d
    move-exception v0

    .line 594
    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    sget-object v0, Lcyanogenmod/hardware/CMHardwareManager;->sCMHardwareManagerInstance:Lcyanogenmod/hardware/CMHardwareManager;

    if-nez v0, :cond_b

    .line 173
    new-instance v0, Lcyanogenmod/hardware/CMHardwareManager;

    invoke-direct {v0, p0}, Lcyanogenmod/hardware/CMHardwareManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcyanogenmod/hardware/CMHardwareManager;->sCMHardwareManagerInstance:Lcyanogenmod/hardware/CMHardwareManager;

    .line 175
    :cond_b
    sget-object v0, Lcyanogenmod/hardware/CMHardwareManager;->sCMHardwareManagerInstance:Lcyanogenmod/hardware/CMHardwareManager;

    return-object v0
.end method

.method public static getService()Lcyanogenmod/hardware/ICMHardwareService;
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 180
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    if-eqz v1, :cond_8

    .line 181
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    return-object v1

    .line 183
    :cond_8
    const-string/jumbo v1, "cmhardware"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 184
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1a

    .line 185
    invoke-static {v0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/hardware/ICMHardwareService;

    move-result-object v1

    sput-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    .line 186
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    return-object v1

    .line 188
    :cond_1a
    return-object v2
.end method

.method private getVibratorIntensityArray()[I
    .registers 3

    .prologue
    .line 293
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 294
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1}, Lcyanogenmod/hardware/ICMHardwareService;->getVibratorIntensity()[I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v1

    return-object v1

    .line 296
    :catch_d
    move-exception v0

    .line 298
    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public deletePersistentObject(Ljava/lang/String;)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 558
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 559
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcyanogenmod/hardware/ICMHardwareService;->writePersistentBytes(Ljava/lang/String;[B)Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_e

    move-result v1

    return v1

    .line 561
    :catch_e
    move-exception v0

    .line 563
    :cond_f
    const/4 v1, 0x0

    return v1
.end method

.method public get(I)Z
    .registers 6
    .param p1, "feature"    # I

    .prologue
    .line 225
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->BOOLEAN_FEATURES:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 226
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a boolean"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    :cond_26
    :try_start_26
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 231
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1, p1}, Lcyanogenmod/hardware/ICMHardwareService;->get(I)Z
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_31} :catch_33

    move-result v1

    return v1

    .line 233
    :catch_33
    move-exception v0

    .line 235
    :cond_34
    const/4 v1, 0x0

    return v1
.end method

.method public getCurrentDisplayMode()Lcyanogenmod/hardware/DisplayMode;
    .registers 3

    .prologue
    .line 772
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 773
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1}, Lcyanogenmod/hardware/ICMHardwareService;->getCurrentDisplayMode()Lcyanogenmod/hardware/DisplayMode;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v1

    return-object v1

    .line 775
    :catch_d
    move-exception v0

    .line 777
    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public getDefaultDisplayMode()Lcyanogenmod/hardware/DisplayMode;
    .registers 3

    .prologue
    .line 785
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 786
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1}, Lcyanogenmod/hardware/ICMHardwareService;->getDefaultDisplayMode()Lcyanogenmod/hardware/DisplayMode;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v1

    return-object v1

    .line 788
    :catch_d
    move-exception v0

    .line 790
    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public getDisplayColorCalibration()[I
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 393
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->getDisplayColorCalibrationArray()[I

    move-result-object v0

    .line 394
    .local v0, "arr":[I
    if-eqz v0, :cond_b

    array-length v1, v0

    if-ge v1, v2, :cond_c

    .line 395
    :cond_b
    return-object v3

    .line 397
    :cond_c
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    return-object v1
.end method

.method public getDisplayColorCalibrationDefault()I
    .registers 4

    .prologue
    .line 404
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->getDisplayColorCalibrationArray()[I

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcyanogenmod/hardware/CMHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getDisplayColorCalibrationMax()I
    .registers 4

    .prologue
    .line 418
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->getDisplayColorCalibrationArray()[I

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcyanogenmod/hardware/CMHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getDisplayColorCalibrationMin()I
    .registers 4

    .prologue
    .line 411
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->getDisplayColorCalibrationArray()[I

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcyanogenmod/hardware/CMHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getDisplayGammaCalibration(I)[I
    .registers 6
    .param p1, "idx"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 618
    invoke-direct {p0, p1}, Lcyanogenmod/hardware/CMHardwareManager;->getDisplayGammaCalibrationArray(I)[I

    move-result-object v0

    .line 619
    .local v0, "arr":[I
    if-eqz v0, :cond_b

    array-length v1, v0

    if-ge v1, v2, :cond_c

    .line 620
    :cond_b
    return-object v3

    .line 622
    :cond_c
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    return-object v1
.end method

.method public getDisplayGammaCalibrationMax()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 638
    invoke-direct {p0, v2}, Lcyanogenmod/hardware/CMHardwareManager;->getDisplayGammaCalibrationArray(I)[I

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, v2}, Lcyanogenmod/hardware/CMHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getDisplayGammaCalibrationMin()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 630
    invoke-direct {p0, v2}, Lcyanogenmod/hardware/CMHardwareManager;->getDisplayGammaCalibrationArray(I)[I

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1, v2}, Lcyanogenmod/hardware/CMHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getDisplayModes()[Lcyanogenmod/hardware/DisplayMode;
    .registers 3

    .prologue
    .line 759
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 760
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1}, Lcyanogenmod/hardware/ICMHardwareService;->getDisplayModes()[Lcyanogenmod/hardware/DisplayMode;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v1

    return-object v1

    .line 762
    :catch_d
    move-exception v0

    .line 764
    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public getLtoDestination()Ljava/lang/String;
    .registers 3

    .prologue
    .line 680
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 681
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1}, Lcyanogenmod/hardware/ICMHardwareService;->getLtoDestination()Ljava/lang/String;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v1

    return-object v1

    .line 683
    :catch_d
    move-exception v0

    .line 685
    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public getLtoDownloadInterval()J
    .registers 5

    .prologue
    .line 693
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 694
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1}, Lcyanogenmod/hardware/ICMHardwareService;->getLtoDownloadInterval()J
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-wide v2

    return-wide v2

    .line 696
    :catch_d
    move-exception v0

    .line 698
    :cond_e
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public getLtoSource()Ljava/lang/String;
    .registers 3

    .prologue
    .line 667
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 668
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1}, Lcyanogenmod/hardware/ICMHardwareService;->getLtoSource()Ljava/lang/String;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v1

    return-object v1

    .line 670
    :catch_d
    move-exception v0

    .line 672
    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public getNumGammaControls()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 603
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 604
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1}, Lcyanogenmod/hardware/ICMHardwareService;->getNumGammaControls()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    return v1

    .line 606
    :catch_d
    move-exception v0

    .line 608
    :cond_e
    const/4 v1, 0x0

    return v1
.end method

.method public getSerialNumber()Ljava/lang/String;
    .registers 3

    .prologue
    .line 706
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 707
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1}, Lcyanogenmod/hardware/ICMHardwareService;->getSerialNumber()Ljava/lang/String;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v1

    return-object v1

    .line 709
    :catch_d
    move-exception v0

    .line 711
    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSupportedFeatures()I
    .registers 3

    .prologue
    .line 196
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 197
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1}, Lcyanogenmod/hardware/ICMHardwareService;->getSupportedFeatures()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    return v1

    .line 199
    :catch_d
    move-exception v0

    .line 201
    :cond_e
    const/4 v1, 0x0

    return v1
.end method

.method public getThermalState()I
    .registers 3

    .prologue
    .line 822
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 823
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1}, Lcyanogenmod/hardware/ICMHardwareService;->getThermalState()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    return v1

    .line 825
    :catch_d
    move-exception v0

    .line 827
    :cond_e
    const/4 v1, -0x1

    return v1
.end method

.method public getUniqueDeviceId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 719
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 720
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1}, Lcyanogenmod/hardware/ICMHardwareService;->getUniqueDeviceId()Ljava/lang/String;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v1

    return-object v1

    .line 722
    :catch_d
    move-exception v0

    .line 724
    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public getVibratorDefaultIntensity()I
    .registers 4

    .prologue
    .line 312
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->getVibratorIntensityArray()[I

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcyanogenmod/hardware/CMHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getVibratorIntensity()I
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 305
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->getVibratorIntensityArray()[I

    move-result-object v0

    invoke-direct {p0, v0, v1, v1}, Lcyanogenmod/hardware/CMHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getVibratorMaxIntensity()I
    .registers 4

    .prologue
    .line 326
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->getVibratorIntensityArray()[I

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcyanogenmod/hardware/CMHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getVibratorMinIntensity()I
    .registers 4

    .prologue
    .line 319
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->getVibratorIntensityArray()[I

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcyanogenmod/hardware/CMHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getVibratorWarningIntensity()I
    .registers 4

    .prologue
    .line 333
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->getVibratorIntensityArray()[I

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcyanogenmod/hardware/CMHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public isSunlightEnhancementSelfManaged()Z
    .registers 3

    .prologue
    .line 746
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 747
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1}, Lcyanogenmod/hardware/ICMHardwareService;->isSunlightEnhancementSelfManaged()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    return v1

    .line 749
    :catch_d
    move-exception v0

    .line 751
    :cond_e
    const/4 v1, 0x0

    return v1
.end method

.method public isSupported(I)Z
    .registers 3
    .param p1, "feature"    # I

    .prologue
    .line 212
    invoke-virtual {p0}, Lcyanogenmod/hardware/CMHardwareManager;->getSupportedFeatures()I

    move-result v0

    and-int/2addr v0, p1

    if-ne p1, v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public readPersistentBytes(Ljava/lang/String;)[B
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 543
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 544
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1, p1}, Lcyanogenmod/hardware/ICMHardwareService;->readPersistentBytes(Ljava/lang/String;)[B
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v1

    return-object v1

    .line 546
    :catch_d
    move-exception v0

    .line 548
    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public readPersistentInt(Ljava/lang/String;)I
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 524
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 525
    sget-object v2, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v2, p1}, Lcyanogenmod/hardware/ICMHardwareService;->readPersistentBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 526
    .local v0, "bytes":[B
    if-eqz v0, :cond_18

    .line 527
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_17

    move-result v2

    return v2

    .line 530
    .end local v0    # "bytes":[B
    :catch_17
    move-exception v1

    .line 532
    :cond_18
    const/4 v2, 0x0

    return v2
.end method

.method public readPersistentString(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 503
    :try_start_1
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 504
    sget-object v3, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v3, p1}, Lcyanogenmod/hardware/ICMHardwareService;->readPersistentBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 505
    .local v0, "bytes":[B
    if-eqz v0, :cond_23

    .line 506
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_24
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_17} :catch_18

    return-object v3

    .line 510
    .end local v0    # "bytes":[B
    :catch_18
    move-exception v2

    .line 511
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v3, "CMHardwareManager"

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 513
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_23
    :goto_23
    return-object v5

    .line 509
    :catch_24
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_23
.end method

.method public registerThermalListener(Lcyanogenmod/hardware/ThermalListenerCallback;)Z
    .registers 4
    .param p1, "thermalCallback"    # Lcyanogenmod/hardware/ThermalListenerCallback;

    .prologue
    .line 836
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 837
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1, p1}, Lcyanogenmod/hardware/ICMHardwareService;->registerThermalListener(Lcyanogenmod/hardware/IThermalListenerCallback;)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    return v1

    .line 839
    :catch_d
    move-exception v0

    .line 841
    :cond_e
    const/4 v1, 0x0

    return v1
.end method

.method public requireAdaptiveBacklightForSunlightEnhancement()Z
    .registers 3

    .prologue
    .line 733
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 734
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1}, Lcyanogenmod/hardware/ICMHardwareService;->requireAdaptiveBacklightForSunlightEnhancement()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    return v1

    .line 736
    :catch_d
    move-exception v0

    .line 738
    :cond_e
    const/4 v1, 0x0

    return v1
.end method

.method public set(IZ)Z
    .registers 7
    .param p1, "feature"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 249
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->BOOLEAN_FEATURES:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 250
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a boolean"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 254
    :cond_26
    :try_start_26
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 255
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1, p1, p2}, Lcyanogenmod/hardware/ICMHardwareService;->set(IZ)Z
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_31} :catch_33

    move-result v1

    return v1

    .line 257
    :catch_33
    move-exception v0

    .line 259
    :cond_34
    const/4 v1, 0x0

    return v1
.end method

.method public setDisplayColorCalibration([I)Z
    .registers 4
    .param p1, "rgb"    # [I

    .prologue
    .line 432
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 433
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1, p1}, Lcyanogenmod/hardware/ICMHardwareService;->setDisplayColorCalibration([I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    return v1

    .line 435
    :catch_d
    move-exception v0

    .line 437
    :cond_e
    const/4 v1, 0x0

    return v1
.end method

.method public setDisplayGammaCalibration(I[I)Z
    .registers 5
    .param p1, "idx"    # I
    .param p2, "rgb"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 654
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 655
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1, p1, p2}, Lcyanogenmod/hardware/ICMHardwareService;->setDisplayGammaCalibration(I[I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    return v1

    .line 657
    :catch_d
    move-exception v0

    .line 659
    :cond_e
    const/4 v1, 0x0

    return v1
.end method

.method public setDisplayMode(Lcyanogenmod/hardware/DisplayMode;Z)Z
    .registers 5
    .param p1, "mode"    # Lcyanogenmod/hardware/DisplayMode;
    .param p2, "makeDefault"    # Z

    .prologue
    .line 798
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 799
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1, p1, p2}, Lcyanogenmod/hardware/ICMHardwareService;->setDisplayMode(Lcyanogenmod/hardware/DisplayMode;Z)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    return v1

    .line 801
    :catch_d
    move-exception v0

    .line 803
    :cond_e
    const/4 v1, 0x0

    return v1
.end method

.method public setVibratorIntensity(I)Z
    .registers 4
    .param p1, "intensity"    # I

    .prologue
    .line 346
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 347
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1, p1}, Lcyanogenmod/hardware/ICMHardwareService;->setVibratorIntensity(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    return v1

    .line 349
    :catch_d
    move-exception v0

    .line 351
    :cond_e
    const/4 v1, 0x0

    return v1
.end method

.method public unRegisterThermalListener(Lcyanogenmod/hardware/ThermalListenerCallback;)Z
    .registers 4
    .param p1, "thermalCallback"    # Lcyanogenmod/hardware/ThermalListenerCallback;

    .prologue
    .line 850
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 851
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1, p1}, Lcyanogenmod/hardware/ICMHardwareService;->unRegisterThermalListener(Lcyanogenmod/hardware/IThermalListenerCallback;)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    return v1

    .line 853
    :catch_d
    move-exception v0

    .line 855
    :cond_e
    const/4 v1, 0x0

    return v1
.end method

.method public writePersistentBytes(Ljava/lang/String;[B)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 487
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 488
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    invoke-interface {v1, p1, p2}, Lcyanogenmod/hardware/ICMHardwareService;->writePersistentBytes(Ljava/lang/String;[B)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    return v1

    .line 490
    :catch_d
    move-exception v0

    .line 492
    :cond_e
    const/4 v1, 0x0

    return v1
.end method

.method public writePersistentInt(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 469
    :try_start_0
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 470
    sget-object v1, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    .line 471
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 470
    invoke-interface {v1, p1, v2}, Lcyanogenmod/hardware/ICMHardwareService;->writePersistentBytes(Ljava/lang/String;[B)Z
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_1a

    move-result v1

    return v1

    .line 473
    :catch_1a
    move-exception v0

    .line 475
    :cond_1b
    const/4 v1, 0x0

    return v1
.end method

.method public writePersistentString(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 449
    :try_start_1
    invoke-direct {p0}, Lcyanogenmod/hardware/CMHardwareManager;->checkService()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 450
    sget-object v3, Lcyanogenmod/hardware/CMHardwareManager;->sService:Lcyanogenmod/hardware/ICMHardwareService;

    .line 451
    if-nez p2, :cond_10

    .line 450
    :goto_b
    invoke-interface {v3, p1, v2}, Lcyanogenmod/hardware/ICMHardwareService;->writePersistentBytes(Ljava/lang/String;[B)Z

    move-result v2

    return v2

    .line 451
    :cond_10
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_16} :catch_25
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_16} :catch_18

    move-result-object v2

    goto :goto_b

    .line 454
    :catch_18
    move-exception v1

    .line 455
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v2, "CMHardwareManager"

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 457
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_23
    :goto_23
    const/4 v2, 0x0

    return v2

    .line 453
    :catch_25
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_23
.end method
