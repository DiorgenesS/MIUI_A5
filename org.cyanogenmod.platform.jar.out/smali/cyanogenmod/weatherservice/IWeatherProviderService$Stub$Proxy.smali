.class Lcyanogenmod/weatherservice/IWeatherProviderService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWeatherProviderService.java"

# interfaces
.implements Lcyanogenmod/weatherservice/IWeatherProviderService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/weatherservice/IWeatherProviderService$Stub;
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
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcyanogenmod/weatherservice/IWeatherProviderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 100
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcyanogenmod/weatherservice/IWeatherProviderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public cancelOngoingRequests()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 164
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string/jumbo v1, "cyanogenmod.weatherservice.IWeatherProviderService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcyanogenmod/weatherservice/IWeatherProviderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_16

    .line 168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 160
    return-void

    .line 167
    :catchall_16
    move-exception v1

    .line 168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 167
    throw v1
.end method

.method public cancelRequest(I)V
    .registers 7
    .param p1, "requestId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 175
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string/jumbo v1, "cyanogenmod.weatherservice.IWeatherProviderService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget-object v1, p0, Lcyanogenmod/weatherservice/IWeatherProviderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 171
    return-void

    .line 179
    :catchall_19
    move-exception v1

    .line 180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 179
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 110
    const-string/jumbo v0, "cyanogenmod.weatherservice.IWeatherProviderService"

    return-object v0
.end method

.method public processCityNameLookupRequest(Lcyanogenmod/weather/RequestInfo;)V
    .registers 7
    .param p1, "request"    # Lcyanogenmod/weather/RequestInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 134
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string/jumbo v1, "cyanogenmod.weatherservice.IWeatherProviderService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 135
    if-eqz p1, :cond_20

    .line 136
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcyanogenmod/weather/RequestInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 142
    :goto_14
    iget-object v1, p0, Lcyanogenmod/weatherservice/IWeatherProviderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_25

    .line 145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 130
    return-void

    .line 140
    :cond_20
    const/4 v1, 0x0

    :try_start_21
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_14

    .line 144
    :catchall_25
    move-exception v1

    .line 145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 144
    throw v1
.end method

.method public processWeatherUpdateRequest(Lcyanogenmod/weather/RequestInfo;)V
    .registers 7
    .param p1, "request"    # Lcyanogenmod/weather/RequestInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 116
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string/jumbo v1, "cyanogenmod.weatherservice.IWeatherProviderService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 117
    if-eqz p1, :cond_20

    .line 118
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcyanogenmod/weather/RequestInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 124
    :goto_14
    iget-object v1, p0, Lcyanogenmod/weatherservice/IWeatherProviderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_25

    .line 127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 112
    return-void

    .line 122
    :cond_20
    const/4 v1, 0x0

    :try_start_21
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_14

    .line 126
    :catchall_25
    move-exception v1

    .line 127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 126
    throw v1
.end method

.method public setServiceClient(Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;)V
    .registers 7
    .param p1, "client"    # Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 150
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 152
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_5
    const-string/jumbo v2, "cyanogenmod.weatherservice.IWeatherProviderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 153
    if-eqz p1, :cond_11

    invoke-interface {p1}, Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_11
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 154
    iget-object v1, p0, Lcyanogenmod/weatherservice/IWeatherProviderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_20

    .line 157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 148
    return-void

    .line 156
    :catchall_20
    move-exception v1

    .line 157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 156
    throw v1
.end method
