.class public final Lcyanogenmod/weather/RequestInfo;
.super Ljava/lang/Object;
.source "RequestInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/weather/RequestInfo$Builder;,
        Lcyanogenmod/weather/RequestInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/weather/RequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_LOOKUP_CITY_NAME_REQ:I = 0x3

.field public static final TYPE_WEATHER_BY_GEO_LOCATION_REQ:I = 0x1

.field public static final TYPE_WEATHER_BY_WEATHER_LOCATION_REQ:I = 0x2


# instance fields
.field private mCityName:Ljava/lang/String;

.field private mIsQueryOnly:Z

.field private mKey:Ljava/lang/String;

.field private mListener:Lcyanogenmod/weather/IRequestInfoListener;

.field private mLocation:Landroid/location/Location;

.field private mRequestType:I

.field private mTempUnit:I

.field private mWeatherLocation:Lcyanogenmod/weather/WeatherLocation;


# direct methods
.method static synthetic -set0(Lcyanogenmod/weather/RequestInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcyanogenmod/weather/RequestInfo;->mCityName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcyanogenmod/weather/RequestInfo;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcyanogenmod/weather/RequestInfo;->mIsQueryOnly:Z

    return p1
.end method

.method static synthetic -set2(Lcyanogenmod/weather/RequestInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcyanogenmod/weather/RequestInfo;->mKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Lcyanogenmod/weather/RequestInfo;Lcyanogenmod/weather/IRequestInfoListener;)Lcyanogenmod/weather/IRequestInfoListener;
    .registers 2

    iput-object p1, p0, Lcyanogenmod/weather/RequestInfo;->mListener:Lcyanogenmod/weather/IRequestInfoListener;

    return-object p1
.end method

.method static synthetic -set4(Lcyanogenmod/weather/RequestInfo;Landroid/location/Location;)Landroid/location/Location;
    .registers 2

    iput-object p1, p0, Lcyanogenmod/weather/RequestInfo;->mLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic -set5(Lcyanogenmod/weather/RequestInfo;I)I
    .registers 2

    iput p1, p0, Lcyanogenmod/weather/RequestInfo;->mRequestType:I

    return p1
.end method

.method static synthetic -set6(Lcyanogenmod/weather/RequestInfo;I)I
    .registers 2

    iput p1, p0, Lcyanogenmod/weather/RequestInfo;->mTempUnit:I

    return p1
.end method

.method static synthetic -set7(Lcyanogenmod/weather/RequestInfo;Lcyanogenmod/weather/WeatherLocation;)Lcyanogenmod/weather/WeatherLocation;
    .registers 2

    iput-object p1, p0, Lcyanogenmod/weather/RequestInfo;->mWeatherLocation:Lcyanogenmod/weather/WeatherLocation;

    return-object p1
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 285
    new-instance v0, Lcyanogenmod/weather/RequestInfo$1;

    invoke-direct {v0}, Lcyanogenmod/weather/RequestInfo$1;-><init>()V

    sput-object v0, Lcyanogenmod/weather/RequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 34
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x1

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 193
    .local v0, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v1

    .line 195
    .local v1, "parcelableVersion":I
    const/4 v2, 0x5

    if-lt v1, v2, :cond_33

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcyanogenmod/weather/RequestInfo;->mKey:Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcyanogenmod/weather/RequestInfo;->mRequestType:I

    .line 198
    iget v2, p0, Lcyanogenmod/weather/RequestInfo;->mRequestType:I

    packed-switch v2, :pswitch_data_62

    .line 211
    :goto_20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_60

    move v2, v3

    :goto_27
    iput-boolean v2, p0, Lcyanogenmod/weather/RequestInfo;->mIsQueryOnly:Z

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcyanogenmod/weather/IRequestInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/weather/IRequestInfoListener;

    move-result-object v2

    iput-object v2, p0, Lcyanogenmod/weather/RequestInfo;->mListener:Lcyanogenmod/weather/IRequestInfoListener;

    .line 216
    :cond_33
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    .line 190
    return-void

    .line 200
    :pswitch_37
    sget-object v2, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    iput-object v2, p0, Lcyanogenmod/weather/RequestInfo;->mLocation:Landroid/location/Location;

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcyanogenmod/weather/RequestInfo;->mTempUnit:I

    goto :goto_20

    .line 204
    :pswitch_48
    sget-object v2, Lcyanogenmod/weather/WeatherLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcyanogenmod/weather/WeatherLocation;

    iput-object v2, p0, Lcyanogenmod/weather/RequestInfo;->mWeatherLocation:Lcyanogenmod/weather/WeatherLocation;

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcyanogenmod/weather/RequestInfo;->mTempUnit:I

    goto :goto_20

    .line 208
    :pswitch_59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcyanogenmod/weather/RequestInfo;->mCityName:Ljava/lang/String;

    goto :goto_20

    .line 211
    :cond_60
    const/4 v2, 0x0

    goto :goto_27

    .line 198
    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_37
        :pswitch_48
        :pswitch_59
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcyanogenmod/weather/RequestInfo;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcyanogenmod/weather/RequestInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Lcyanogenmod/weather/RequestInfo;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Lcyanogenmod/weather/RequestInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 299
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 370
    if-nez p1, :cond_4

    return v3

    .line 372
    :cond_4
    invoke-virtual {p0}, Lcyanogenmod/weather/RequestInfo;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_1a

    move-object v0, p1

    .line 373
    check-cast v0, Lcyanogenmod/weather/RequestInfo;

    .line 374
    .local v0, "info":Lcyanogenmod/weather/RequestInfo;
    iget-object v1, p0, Lcyanogenmod/weather/RequestInfo;->mKey:Ljava/lang/String;

    iget-object v2, v0, Lcyanogenmod/weather/RequestInfo;->mKey:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1

    .line 376
    .end local v0    # "info":Lcyanogenmod/weather/RequestInfo;
    :cond_1a
    return v3
.end method

.method public getCityName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Lcyanogenmod/weather/RequestInfo;->mCityName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .registers 3

    .prologue
    .line 232
    new-instance v0, Landroid/location/Location;

    iget-object v1, p0, Lcyanogenmod/weather/RequestInfo;->mLocation:Landroid/location/Location;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    return-object v0
.end method

.method public getRequestListener()Lcyanogenmod/weather/IRequestInfoListener;
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Lcyanogenmod/weather/RequestInfo;->mListener:Lcyanogenmod/weather/IRequestInfoListener;

    return-object v0
.end method

.method public getRequestType()I
    .registers 2

    .prologue
    .line 224
    iget v0, p0, Lcyanogenmod/weather/RequestInfo;->mRequestType:I

    return v0
.end method

.method public getTemperatureUnit()I
    .registers 2

    .prologue
    .line 261
    iget v0, p0, Lcyanogenmod/weather/RequestInfo;->mRequestType:I

    packed-switch v0, :pswitch_data_a

    .line 266
    const/4 v0, -0x1

    return v0

    .line 264
    :pswitch_7
    iget v0, p0, Lcyanogenmod/weather/RequestInfo;->mTempUnit:I

    return v0

    .line 261
    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public getWeatherLocation()Lcyanogenmod/weather/WeatherLocation;
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Lcyanogenmod/weather/RequestInfo;->mWeatherLocation:Lcyanogenmod/weather/WeatherLocation;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 362
    const/16 v0, 0x1f

    .line 364
    .local v0, "prime":I
    iget-object v2, p0, Lcyanogenmod/weather/RequestInfo;->mKey:Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcyanogenmod/weather/RequestInfo;->mKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_c
    add-int/lit8 v1, v2, 0x1f

    .line 365
    .local v1, "result":I
    return v1

    .line 364
    .end local v1    # "result":I
    :cond_f
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public isQueryOnlyWeatherRequest()Z
    .registers 2

    .prologue
    .line 276
    iget v0, p0, Lcyanogenmod/weather/RequestInfo;->mRequestType:I

    packed-switch v0, :pswitch_data_a

    .line 281
    const/4 v0, 0x0

    return v0

    .line 279
    :pswitch_7
    iget-boolean v0, p0, Lcyanogenmod/weather/RequestInfo;->mIsQueryOnly:Z

    return v0

    .line 276
    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{ Request for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    iget v1, p0, Lcyanogenmod/weather/RequestInfo;->mRequestType:I

    packed-switch v1, :pswitch_data_72

    .line 357
    :goto_11
    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 336
    :pswitch_1d
    const-string/jumbo v1, "Location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcyanogenmod/weather/RequestInfo;->mLocation:Landroid/location/Location;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 337
    const-string/jumbo v1, " Temp Unit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    iget v1, p0, Lcyanogenmod/weather/RequestInfo;->mTempUnit:I

    if-ne v1, v3, :cond_3a

    .line 339
    const-string/jumbo v1, "Fahrenheit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 341
    :cond_3a
    const-string/jumbo v1, " Celsius"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 345
    :pswitch_41
    const-string/jumbo v1, "WeatherLocation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcyanogenmod/weather/RequestInfo;->mWeatherLocation:Lcyanogenmod/weather/WeatherLocation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 346
    const-string/jumbo v1, " Temp Unit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    iget v1, p0, Lcyanogenmod/weather/RequestInfo;->mTempUnit:I

    if-ne v1, v3, :cond_5e

    .line 348
    const-string/jumbo v1, "Fahrenheit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 350
    :cond_5e
    const-string/jumbo v1, " Celsius"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 354
    :pswitch_65
    const-string/jumbo v1, "Lookup City: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcyanogenmod/weather/RequestInfo;->mCityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 334
    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_41
        :pswitch_65
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 305
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 308
    .local v0, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    iget-object v2, p0, Lcyanogenmod/weather/RequestInfo;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 309
    iget v2, p0, Lcyanogenmod/weather/RequestInfo;->mRequestType:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    iget v2, p0, Lcyanogenmod/weather/RequestInfo;->mRequestType:I

    packed-switch v2, :pswitch_data_46

    .line 323
    :goto_14
    iget-boolean v2, p0, Lcyanogenmod/weather/RequestInfo;->mIsQueryOnly:Z

    if-eqz v2, :cond_19

    const/4 v1, 0x1

    :cond_19
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    iget-object v1, p0, Lcyanogenmod/weather/RequestInfo;->mListener:Lcyanogenmod/weather/IRequestInfoListener;

    invoke-interface {v1}, Lcyanogenmod/weather/IRequestInfoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 327
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    .line 303
    return-void

    .line 312
    :pswitch_29
    iget-object v2, p0, Lcyanogenmod/weather/RequestInfo;->mLocation:Landroid/location/Location;

    invoke-virtual {v2, p1, v1}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    .line 313
    iget v2, p0, Lcyanogenmod/weather/RequestInfo;->mTempUnit:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_14

    .line 316
    :pswitch_34
    iget-object v2, p0, Lcyanogenmod/weather/RequestInfo;->mWeatherLocation:Lcyanogenmod/weather/WeatherLocation;

    invoke-virtual {v2, p1, v1}, Lcyanogenmod/weather/WeatherLocation;->writeToParcel(Landroid/os/Parcel;I)V

    .line 317
    iget v2, p0, Lcyanogenmod/weather/RequestInfo;->mTempUnit:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_14

    .line 320
    :pswitch_3f
    iget-object v2, p0, Lcyanogenmod/weather/RequestInfo;->mCityName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_14

    .line 310
    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_29
        :pswitch_34
        :pswitch_3f
    .end packed-switch
.end method
