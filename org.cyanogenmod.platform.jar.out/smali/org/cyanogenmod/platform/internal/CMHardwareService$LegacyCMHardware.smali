.class Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;
.super Ljava/lang/Object;
.source "CMHardwareService.java"

# interfaces
.implements Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/CMHardwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LegacyCMHardware"
.end annotation


# instance fields
.field private mSupportedFeatures:I

.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;


# direct methods
.method public constructor <init>(Lorg/cyanogenmod/platform/internal/CMHardwareService;)V
    .registers 4
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/CMHardwareService;

    .prologue
    .line 105
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 106
    invoke-static {}, Lorg/cyanogenmod/hardware/AdaptiveBacklight;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 107
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 108
    :cond_14
    invoke-static {}, Lorg/cyanogenmod/hardware/ColorEnhancement;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 109
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 110
    :cond_20
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayColorCalibration;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 111
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 112
    :cond_2c
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayGammaCalibration;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 113
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 114
    :cond_38
    invoke-static {}, Lorg/cyanogenmod/hardware/HighTouchSensitivity;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 115
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 116
    :cond_44
    invoke-static {}, Lorg/cyanogenmod/hardware/KeyDisabler;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 117
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 118
    :cond_50
    invoke-static {}, Lorg/cyanogenmod/hardware/LongTermOrbits;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 119
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 120
    :cond_5c
    invoke-static {}, Lorg/cyanogenmod/hardware/SerialNumber;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 121
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 122
    :cond_68
    invoke-static {}, Lorg/cyanogenmod/hardware/SunlightEnhancement;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 123
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 124
    :cond_74
    invoke-static {}, Lorg/cyanogenmod/hardware/TapToWake;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 125
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 126
    :cond_80
    invoke-static {}, Lorg/cyanogenmod/hardware/VibratorHW;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 127
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 128
    :cond_8c
    invoke-static {}, Lorg/cyanogenmod/hardware/TouchscreenHovering;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_98

    .line 129
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 130
    :cond_98
    invoke-static {}, Lorg/cyanogenmod/hardware/AutoContrast;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 131
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 132
    :cond_a4
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayModeControl;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 133
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 134
    :cond_b0
    invoke-static {}, Lorg/cyanogenmod/hardware/PersistentStorage;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 135
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 136
    :cond_bc
    invoke-static {}, Lorg/cyanogenmod/hardware/ThermalMonitor;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 137
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 138
    :cond_ca
    invoke-static {}, Lorg/cyanogenmod/hardware/UniqueDeviceId;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 139
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 105
    :cond_d7
    return-void
.end method

.method private rgbToString([I)Ljava/lang/String;
    .registers 4
    .param p1, "rgb"    # [I

    .prologue
    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const/4 v1, 0x1

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    const/4 v1, 0x2

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private splitStringToInt(Ljava/lang/String;Ljava/lang/String;)[I
    .registers 9
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "delimiter"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 197
    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    .line 198
    :cond_5
    return-object v5

    .line 200
    :cond_6
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, "strArray":[Ljava/lang/String;
    :try_start_a
    array-length v4, v3

    new-array v2, v4, [I

    .line 203
    .local v2, "intArray":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v4, v3

    if-ge v1, v4, :cond_1c

    .line 204
    aget-object v4, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v1
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_19} :catch_1d

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 206
    :cond_1c
    return-object v2

    .line 207
    .end local v1    # "i":I
    .end local v2    # "intArray":[I
    :catch_1d
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/NumberFormatException;
    return-object v5
.end method


# virtual methods
.method public get(I)Z
    .registers 5
    .param p1, "feature"    # I

    .prologue
    .line 147
    sparse-switch p1, :sswitch_data_54

    .line 167
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a boolean feature"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v0, 0x0

    return v0

    .line 149
    :sswitch_27
    invoke-static {}, Lorg/cyanogenmod/hardware/AdaptiveBacklight;->isEnabled()Z

    move-result v0

    return v0

    .line 151
    :sswitch_2c
    invoke-static {}, Lorg/cyanogenmod/hardware/ColorEnhancement;->isEnabled()Z

    move-result v0

    return v0

    .line 153
    :sswitch_31
    invoke-static {}, Lorg/cyanogenmod/hardware/HighTouchSensitivity;->isEnabled()Z

    move-result v0

    return v0

    .line 155
    :sswitch_36
    invoke-static {}, Lorg/cyanogenmod/hardware/KeyDisabler;->isActive()Z

    move-result v0

    return v0

    .line 157
    :sswitch_3b
    invoke-static {}, Lorg/cyanogenmod/hardware/SunlightEnhancement;->isEnabled()Z

    move-result v0

    return v0

    .line 159
    :sswitch_40
    invoke-static {}, Lorg/cyanogenmod/hardware/TapToWake;->isEnabled()Z

    move-result v0

    return v0

    .line 161
    :sswitch_45
    invoke-static {}, Lorg/cyanogenmod/hardware/TouchscreenHovering;->isEnabled()Z

    move-result v0

    return v0

    .line 163
    :sswitch_4a
    invoke-static {}, Lorg/cyanogenmod/hardware/AutoContrast;->isEnabled()Z

    move-result v0

    return v0

    .line 165
    :sswitch_4f
    invoke-static {}, Lorg/cyanogenmod/hardware/ThermalMonitor;->isEnabled()Z

    move-result v0

    return v0

    .line 147
    :sswitch_data_54
    .sparse-switch
        0x1 -> :sswitch_27
        0x2 -> :sswitch_2c
        0x10 -> :sswitch_31
        0x20 -> :sswitch_36
        0x100 -> :sswitch_3b
        0x200 -> :sswitch_40
        0x800 -> :sswitch_45
        0x1000 -> :sswitch_4a
        0x8000 -> :sswitch_4f
    .end sparse-switch
.end method

.method public getCurrentDisplayMode()Lcyanogenmod/hardware/DisplayMode;
    .registers 2

    .prologue
    .line 319
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayModeControl;->getCurrentMode()Lcyanogenmod/hardware/DisplayMode;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultDisplayMode()Lcyanogenmod/hardware/DisplayMode;
    .registers 2

    .prologue
    .line 323
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayModeControl;->getDefaultMode()Lcyanogenmod/hardware/DisplayMode;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayColorCalibration()[I
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 224
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayColorCalibration;->getCurColors()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-direct {p0, v2, v3}, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->splitStringToInt(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    .line 225
    .local v1, "rgb":[I
    if-eqz v1, :cond_15

    array-length v2, v1

    if-eq v2, v7, :cond_20

    .line 226
    :cond_15
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Invalid color calibration string"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-object v8

    .line 229
    :cond_20
    const/4 v2, 0x6

    new-array v0, v2, [I

    .line 230
    .local v0, "currentCalibration":[I
    aget v2, v1, v4

    aput v2, v0, v4

    .line 231
    aget v2, v1, v5

    aput v2, v0, v5

    .line 232
    aget v2, v1, v6

    aput v2, v0, v6

    .line 234
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayColorCalibration;->getDefValue()I

    move-result v2

    .line 233
    aput v2, v0, v7

    .line 236
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayColorCalibration;->getMinValue()I

    move-result v2

    .line 235
    const/4 v3, 0x4

    aput v2, v0, v3

    .line 238
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayColorCalibration;->getMaxValue()I

    move-result v2

    .line 237
    const/4 v3, 0x5

    aput v2, v0, v3

    .line 239
    return-object v0
.end method

.method public getDisplayGammaCalibration(I)[I
    .registers 11
    .param p1, "idx"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 251
    invoke-static {p1}, Lorg/cyanogenmod/hardware/DisplayGammaCalibration;->getCurGamma(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-direct {p0, v2, v3}, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->splitStringToInt(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    .line 252
    .local v1, "rgb":[I
    if-eqz v1, :cond_15

    array-length v2, v1

    if-eq v2, v7, :cond_20

    .line 253
    :cond_15
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Invalid gamma calibration string"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-object v8

    .line 256
    :cond_20
    const/4 v2, 0x5

    new-array v0, v2, [I

    .line 257
    .local v0, "currentCalibration":[I
    aget v2, v1, v4

    aput v2, v0, v4

    .line 258
    aget v2, v1, v5

    aput v2, v0, v5

    .line 259
    aget v2, v1, v6

    aput v2, v0, v6

    .line 261
    invoke-static {p1}, Lorg/cyanogenmod/hardware/DisplayGammaCalibration;->getMinValue(I)I

    move-result v2

    .line 260
    aput v2, v0, v7

    .line 263
    invoke-static {p1}, Lorg/cyanogenmod/hardware/DisplayGammaCalibration;->getMaxValue(I)I

    move-result v2

    .line 262
    const/4 v3, 0x4

    aput v2, v0, v3

    .line 264
    return-object v0
.end method

.method public getDisplayModes()[Lcyanogenmod/hardware/DisplayMode;
    .registers 2

    .prologue
    .line 315
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayModeControl;->getAvailableModes()[Lcyanogenmod/hardware/DisplayMode;

    move-result-object v0

    return-object v0
.end method

.method public getLtoDestination()Ljava/lang/String;
    .registers 3

    .prologue
    .line 290
    invoke-static {}, Lorg/cyanogenmod/hardware/LongTermOrbits;->getDestinationLocation()Ljava/io/File;

    move-result-object v0

    .line 291
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLtoDownloadInterval()J
    .registers 3

    .prologue
    .line 295
    invoke-static {}, Lorg/cyanogenmod/hardware/LongTermOrbits;->getDownloadInterval()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLtoSource()Ljava/lang/String;
    .registers 2

    .prologue
    .line 286
    invoke-static {}, Lorg/cyanogenmod/hardware/LongTermOrbits;->getSourceLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumGammaControls()I
    .registers 2

    .prologue
    .line 247
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayGammaCalibration;->getNumberOfControls()I

    move-result v0

    return v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 299
    invoke-static {}, Lorg/cyanogenmod/hardware/SerialNumber;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedFeatures()I
    .registers 2

    .prologue
    .line 143
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    return v0
.end method

.method public getUniqueDeviceId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 303
    invoke-static {}, Lorg/cyanogenmod/hardware/UniqueDeviceId;->getUniqueDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVibratorIntensity()[I
    .registers 4

    .prologue
    .line 272
    const/4 v1, 0x5

    new-array v0, v1, [I

    .line 273
    .local v0, "vibrator":[I
    invoke-static {}, Lorg/cyanogenmod/hardware/VibratorHW;->getCurIntensity()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 274
    invoke-static {}, Lorg/cyanogenmod/hardware/VibratorHW;->getDefaultIntensity()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 275
    invoke-static {}, Lorg/cyanogenmod/hardware/VibratorHW;->getMinIntensity()I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 276
    invoke-static {}, Lorg/cyanogenmod/hardware/VibratorHW;->getMaxIntensity()I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 277
    invoke-static {}, Lorg/cyanogenmod/hardware/VibratorHW;->getWarningThreshold()I

    move-result v1

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 278
    return-object v0
.end method

.method public isSunlightEnhancementSelfManaged()Z
    .registers 2

    .prologue
    .line 311
    invoke-static {}, Lorg/cyanogenmod/hardware/SunlightEnhancement;->isSelfManaged()Z

    move-result v0

    return v0
.end method

.method public readPersistentBytes(Ljava/lang/String;)[B
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 335
    invoke-static {p1}, Lorg/cyanogenmod/hardware/PersistentStorage;->get(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public requireAdaptiveBacklightForSunlightEnhancement()Z
    .registers 2

    .prologue
    .line 307
    invoke-static {}, Lorg/cyanogenmod/hardware/SunlightEnhancement;->isAdaptiveBacklightRequired()Z

    move-result v0

    return v0
.end method

.method public set(IZ)Z
    .registers 6
    .param p1, "feature"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 173
    sparse-switch p1, :sswitch_data_50

    .line 191
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a boolean feature"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v0, 0x0

    return v0

    .line 175
    :sswitch_27
    invoke-static {p2}, Lorg/cyanogenmod/hardware/AdaptiveBacklight;->setEnabled(Z)Z

    move-result v0

    return v0

    .line 177
    :sswitch_2c
    invoke-static {p2}, Lorg/cyanogenmod/hardware/ColorEnhancement;->setEnabled(Z)Z

    move-result v0

    return v0

    .line 179
    :sswitch_31
    invoke-static {p2}, Lorg/cyanogenmod/hardware/HighTouchSensitivity;->setEnabled(Z)Z

    move-result v0

    return v0

    .line 181
    :sswitch_36
    invoke-static {p2}, Lorg/cyanogenmod/hardware/KeyDisabler;->setActive(Z)Z

    move-result v0

    return v0

    .line 183
    :sswitch_3b
    invoke-static {p2}, Lorg/cyanogenmod/hardware/SunlightEnhancement;->setEnabled(Z)Z

    move-result v0

    return v0

    .line 185
    :sswitch_40
    invoke-static {p2}, Lorg/cyanogenmod/hardware/TapToWake;->setEnabled(Z)Z

    move-result v0

    return v0

    .line 187
    :sswitch_45
    invoke-static {p2}, Lorg/cyanogenmod/hardware/TouchscreenHovering;->setEnabled(Z)Z

    move-result v0

    return v0

    .line 189
    :sswitch_4a
    invoke-static {p2}, Lorg/cyanogenmod/hardware/AutoContrast;->setEnabled(Z)Z

    move-result v0

    return v0

    .line 173
    nop

    :sswitch_data_50
    .sparse-switch
        0x1 -> :sswitch_27
        0x2 -> :sswitch_2c
        0x10 -> :sswitch_31
        0x20 -> :sswitch_36
        0x100 -> :sswitch_3b
        0x200 -> :sswitch_40
        0x800 -> :sswitch_45
        0x1000 -> :sswitch_4a
    .end sparse-switch
.end method

.method public setDisplayColorCalibration([I)Z
    .registers 3
    .param p1, "rgb"    # [I

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->rgbToString([I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cyanogenmod/hardware/DisplayColorCalibration;->setColors(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDisplayGammaCalibration(I[I)Z
    .registers 4
    .param p1, "idx"    # I
    .param p2, "rgb"    # [I

    .prologue
    .line 268
    invoke-direct {p0, p2}, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->rgbToString([I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/cyanogenmod/hardware/DisplayGammaCalibration;->setGamma(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDisplayMode(Lcyanogenmod/hardware/DisplayMode;Z)Z
    .registers 4
    .param p1, "mode"    # Lcyanogenmod/hardware/DisplayMode;
    .param p2, "makeDefault"    # Z

    .prologue
    .line 327
    invoke-static {p1, p2}, Lorg/cyanogenmod/hardware/DisplayModeControl;->setMode(Lcyanogenmod/hardware/DisplayMode;Z)Z

    move-result v0

    return v0
.end method

.method public setVibratorIntensity(I)Z
    .registers 3
    .param p1, "intensity"    # I

    .prologue
    .line 282
    invoke-static {p1}, Lorg/cyanogenmod/hardware/VibratorHW;->setIntensity(I)Z

    move-result v0

    return v0
.end method

.method public writePersistentBytes(Ljava/lang/String;[B)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 331
    invoke-static {p1, p2}, Lorg/cyanogenmod/hardware/PersistentStorage;->set(Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method
