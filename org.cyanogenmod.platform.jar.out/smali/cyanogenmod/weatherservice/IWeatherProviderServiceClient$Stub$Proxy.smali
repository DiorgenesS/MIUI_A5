.class Lcyanogenmod/weatherservice/IWeatherProviderServiceClient$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWeatherProviderServiceClient.java"

# interfaces
.implements Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/weatherservice/IWeatherProviderServiceClient$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcyanogenmod/weatherservice/IWeatherProviderServiceClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 74
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcyanogenmod/weatherservice/IWeatherProviderServiceClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    const-string/jumbo v0, "cyanogenmod.weatherservice.IWeatherProviderServiceClient"

    return-object v0
.end method

.method public setServiceRequestState(Lcyanogenmod/weather/RequestInfo;Lcyanogenmod/weatherservice/ServiceRequestResult;I)V
    .registers 9
    .param p1, "requestInfo"    # Lcyanogenmod/weather/RequestInfo;
    .param p2, "result"    # Lcyanogenmod/weatherservice/ServiceRequestResult;
    .param p3, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 90
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string/jumbo v1, "cyanogenmod.weatherservice.IWeatherProviderServiceClient"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 91
    if-eqz p1, :cond_2d

    .line 92
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcyanogenmod/weather/RequestInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 98
    :goto_14
    if-eqz p2, :cond_37

    .line 99
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcyanogenmod/weatherservice/ServiceRequestResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 105
    :goto_1e
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget-object v1, p0, Lcyanogenmod/weatherservice/IWeatherProviderServiceClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_32

    .line 109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 86
    return-void

    .line 96
    :cond_2d
    const/4 v1, 0x0

    :try_start_2e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_32

    goto :goto_14

    .line 108
    :catchall_32
    move-exception v1

    .line 109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 108
    throw v1

    .line 103
    :cond_37
    const/4 v1, 0x0

    :try_start_38
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_32

    goto :goto_1e
.end method
