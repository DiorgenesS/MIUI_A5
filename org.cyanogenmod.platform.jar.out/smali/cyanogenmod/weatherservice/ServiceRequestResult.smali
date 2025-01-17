.class public final Lcyanogenmod/weatherservice/ServiceRequestResult;
.super Ljava/lang/Object;
.source "ServiceRequestResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/weatherservice/ServiceRequestResult$Builder;,
        Lcyanogenmod/weatherservice/ServiceRequestResult$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/weatherservice/ServiceRequestResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mKey:Ljava/lang/String;

.field private mLocationLookupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcyanogenmod/weather/WeatherLocation;",
            ">;"
        }
    .end annotation
.end field

.field private mWeatherInfo:Lcyanogenmod/weather/WeatherInfo;


# direct methods
.method static synthetic -set0(Lcyanogenmod/weatherservice/ServiceRequestResult;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcyanogenmod/weatherservice/ServiceRequestResult;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mLocationLookupList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -set2(Lcyanogenmod/weatherservice/ServiceRequestResult;Lcyanogenmod/weather/WeatherInfo;)Lcyanogenmod/weather/WeatherInfo;
    .registers 2

    iput-object p1, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mWeatherInfo:Lcyanogenmod/weather/WeatherInfo;

    return-object p1
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 72
    new-instance v0, Lcyanogenmod/weatherservice/ServiceRequestResult$1;

    invoke-direct {v0}, Lcyanogenmod/weatherservice/ServiceRequestResult$1;-><init>()V

    .line 71
    sput-object v0, Lcyanogenmod/weatherservice/ServiceRequestResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 37
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v3

    .line 48
    .local v3, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    invoke-virtual {v3}, Lcyanogenmod/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v4

    .line 50
    .local v4, "parcelableVersion":I
    const/4 v5, 0x5

    if-lt v4, v5, :cond_48

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mKey:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 53
    .local v1, "hasWeatherInfo":I
    if-ne v1, v6, :cond_25

    .line 54
    sget-object v5, Lcyanogenmod/weather/WeatherInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcyanogenmod/weather/WeatherInfo;

    iput-object v5, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mWeatherInfo:Lcyanogenmod/weather/WeatherInfo;

    .line 56
    :cond_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 57
    .local v0, "hasLocationLookupList":I
    if-ne v0, v6, :cond_48

    .line 58
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mLocationLookupList:Ljava/util/List;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 60
    .local v2, "listSize":I
    :goto_36
    if-lez v2, :cond_48

    .line 61
    iget-object v6, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mLocationLookupList:Ljava/util/List;

    sget-object v5, Lcyanogenmod/weather/WeatherLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcyanogenmod/weather/WeatherLocation;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v2, v2, -0x1

    goto :goto_36

    .line 68
    .end local v0    # "hasLocationLookupList":I
    .end local v1    # "hasWeatherInfo":I
    .end local v2    # "listSize":I
    :cond_48
    invoke-virtual {v3}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcyanogenmod/weatherservice/ServiceRequestResult;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcyanogenmod/weatherservice/ServiceRequestResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Lcyanogenmod/weatherservice/ServiceRequestResult;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Lcyanogenmod/weatherservice/ServiceRequestResult;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 187
    if-nez p1, :cond_4

    return v3

    .line 189
    :cond_4
    invoke-virtual {p0}, Lcyanogenmod/weatherservice/ServiceRequestResult;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_1a

    move-object v0, p1

    .line 190
    check-cast v0, Lcyanogenmod/weatherservice/ServiceRequestResult;

    .line 191
    .local v0, "request":Lcyanogenmod/weatherservice/ServiceRequestResult;
    iget-object v1, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mKey:Ljava/lang/String;

    iget-object v2, v0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mKey:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1

    .line 193
    .end local v0    # "request":Lcyanogenmod/weatherservice/ServiceRequestResult;
    :cond_1a
    return v3
.end method

.method public getLocationLookupList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcyanogenmod/weather/WeatherLocation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mLocationLookupList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getWeatherInfo()Lcyanogenmod/weather/WeatherInfo;
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mWeatherInfo:Lcyanogenmod/weather/WeatherInfo;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 179
    const/16 v0, 0x1f

    .line 181
    .local v0, "prime":I
    iget-object v2, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mKey:Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_c
    add-int/lit8 v1, v2, 0x1f

    .line 182
    .local v1, "result":I
    return v1

    .line 181
    .end local v1    # "result":I
    :cond_f
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 9
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 92
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v2

    .line 95
    .local v2, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    iget-object v3, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v3, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mWeatherInfo:Lcyanogenmod/weather/WeatherInfo;

    if-eqz v3, :cond_3d

    .line 97
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-object v3, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mWeatherInfo:Lcyanogenmod/weather/WeatherInfo;

    invoke-virtual {v3, p1, v4}, Lcyanogenmod/weather/WeatherInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 102
    :goto_17
    iget-object v3, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mLocationLookupList:Ljava/util/List;

    if-eqz v3, :cond_41

    .line 103
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget-object v3, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mLocationLookupList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget-object v3, p0, Lcyanogenmod/weatherservice/ServiceRequestResult;->mLocationLookupList:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "lookup$iterator":Ljava/util/Iterator;
    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcyanogenmod/weather/WeatherLocation;

    .line 106
    .local v0, "lookup":Lcyanogenmod/weather/WeatherLocation;
    invoke-virtual {v0, p1, v4}, Lcyanogenmod/weather/WeatherLocation;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2d

    .line 100
    .end local v0    # "lookup":Lcyanogenmod/weather/WeatherLocation;
    .end local v1    # "lookup$iterator":Ljava/util/Iterator;
    :cond_3d
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17

    .line 109
    :cond_41
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    :cond_44
    invoke-virtual {v2}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    .line 90
    return-void
.end method
