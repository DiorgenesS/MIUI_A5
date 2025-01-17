.class public Lcyanogenmod/weather/util/WeatherUtils;
.super Ljava/lang/Object;
.source "WeatherUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static celsiusToFahrenheit(D)D
    .registers 6
    .param p0, "celsius"    # D

    .prologue
    .line 35
    const-wide v0, 0x3ffccccccccccccdL

    mul-double/2addr v0, p0

    const-wide/high16 v2, 0x4040000000000000L

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static fahrenheitToCelsius(D)D
    .registers 6
    .param p0, "fahrenheit"    # D

    .prologue
    .line 44
    const-wide/high16 v0, 0x4040000000000000L

    sub-double v0, p0, v0

    const-wide v2, 0x3fe1c71c71c71c72L

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static formatTemperature(DI)Ljava/lang/String;
    .registers 9
    .param p0, "temperature"    # D
    .param p2, "tempUnit"    # I

    .prologue
    .line 56
    invoke-static {p2}, Lcyanogenmod/weather/util/WeatherUtils;->isValidTempUnit(I)Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x0

    return-object v3

    .line 57
    :cond_8
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_12

    const-string/jumbo v3, "-"

    return-object v3

    .line 59
    :cond_12
    new-instance v1, Ljava/text/DecimalFormat;

    const-string/jumbo v3, "0"

    invoke-direct {v1, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 60
    .local v1, "noDigitsFormat":Ljava/text/DecimalFormat;
    invoke-virtual {v1, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "noDigitsTemp":Ljava/lang/String;
    const-string/jumbo v3, "-0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 62
    const-string/jumbo v2, "0"

    .line 65
    :cond_2a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 66
    const-string/jumbo v4, "\u00b0"

    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 67
    .local v0, "formatted":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    if-ne p2, v3, :cond_48

    .line 68
    const-string/jumbo v3, "C"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    :cond_43
    :goto_43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 69
    :cond_48
    const/4 v3, 0x2

    if-ne p2, v3, :cond_43

    .line 70
    const-string/jumbo v3, "F"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_43
.end method

.method private static isValidTempUnit(I)Z
    .registers 2
    .param p0, "unit"    # I

    .prologue
    .line 76
    packed-switch p0, :pswitch_data_8

    .line 81
    const/4 v0, 0x0

    return v0

    .line 79
    :pswitch_5
    const/4 v0, 0x1

    return v0

    .line 76
    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
