.class public final Lcyanogenmod/weatherservice/ServiceRequest;
.super Ljava/lang/Object;
.source "ServiceRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/weatherservice/ServiceRequest$Status;
    }
.end annotation


# instance fields
.field private final mClient:Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;

.field private final mInfo:Lcyanogenmod/weather/RequestInfo;

.field private mStatus:Lcyanogenmod/weatherservice/ServiceRequest$Status;


# direct methods
.method constructor <init>(Lcyanogenmod/weather/RequestInfo;Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;)V
    .registers 4
    .param p1, "info"    # Lcyanogenmod/weather/RequestInfo;
    .param p2, "client"    # Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mInfo:Lcyanogenmod/weather/RequestInfo;

    .line 39
    iput-object p2, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mClient:Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;

    .line 40
    sget-object v0, Lcyanogenmod/weatherservice/ServiceRequest$Status;->IN_PROGRESS:Lcyanogenmod/weatherservice/ServiceRequest$Status;

    iput-object v0, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mStatus:Lcyanogenmod/weatherservice/ServiceRequest$Status;

    .line 37
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 153
    monitor-enter p0

    .line 154
    :try_start_1
    sget-object v0, Lcyanogenmod/weatherservice/ServiceRequest$Status;->CANCELLED:Lcyanogenmod/weatherservice/ServiceRequest$Status;

    iput-object v0, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mStatus:Lcyanogenmod/weatherservice/ServiceRequest$Status;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    .line 152
    return-void

    .line 153
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public complete(Lcyanogenmod/weatherservice/ServiceRequestResult;)V
    .registers 8
    .param p1, "result"    # Lcyanogenmod/weatherservice/ServiceRequestResult;

    .prologue
    .line 55
    monitor-enter p0

    .line 56
    :try_start_1
    iget-object v2, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mStatus:Lcyanogenmod/weatherservice/ServiceRequest$Status;

    sget-object v3, Lcyanogenmod/weatherservice/ServiceRequest$Status;->IN_PROGRESS:Lcyanogenmod/weatherservice/ServiceRequest$Status;

    invoke-virtual {v2, v3}, Lcyanogenmod/weatherservice/ServiceRequest$Status;->equals(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_34

    move-result v2

    if-eqz v2, :cond_18

    .line 58
    :try_start_b
    iget-object v2, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mInfo:Lcyanogenmod/weather/RequestInfo;

    invoke-virtual {v2}, Lcyanogenmod/weather/RequestInfo;->getRequestType()I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_29
    .catchall {:try_start_b .. :try_end_10} :catchall_34

    move-result v1

    .line 59
    .local v1, "requestType":I
    packed-switch v1, :pswitch_data_5a

    .line 84
    .end local v1    # "requestType":I
    :goto_14
    :try_start_14
    sget-object v2, Lcyanogenmod/weatherservice/ServiceRequest$Status;->COMPLETED:Lcyanogenmod/weatherservice/ServiceRequest$Status;

    iput-object v2, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mStatus:Lcyanogenmod/weatherservice/ServiceRequest$Status;
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_34

    :cond_18
    monitor-exit p0

    .line 54
    return-void

    .line 62
    .restart local v1    # "requestType":I
    :pswitch_1a
    :try_start_1a
    invoke-virtual {p1}, Lcyanogenmod/weatherservice/ServiceRequestResult;->getWeatherInfo()Lcyanogenmod/weather/WeatherInfo;

    move-result-object v2

    if-nez v2, :cond_2b

    .line 63
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "The service request result doesn\'t contain a valid WeatherInfo object"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    .end local v1    # "requestType":I
    :catch_29
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_14

    .line 66
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "requestType":I
    :cond_2b
    iget-object v2, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mClient:Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;

    iget-object v3, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mInfo:Lcyanogenmod/weather/RequestInfo;

    .line 67
    const/4 v4, 0x1

    .line 66
    invoke-interface {v2, v3, p1, v4}, Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;->setServiceRequestState(Lcyanogenmod/weather/RequestInfo;Lcyanogenmod/weatherservice/ServiceRequestResult;I)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_33} :catch_29
    .catchall {:try_start_1a .. :try_end_33} :catchall_34

    goto :goto_14

    .line 55
    .end local v1    # "requestType":I
    :catchall_34
    move-exception v2

    monitor-exit p0

    throw v2

    .line 70
    .restart local v1    # "requestType":I
    :pswitch_37
    :try_start_37
    invoke-virtual {p1}, Lcyanogenmod/weatherservice/ServiceRequestResult;->getLocationLookupList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_47

    .line 71
    invoke-virtual {p1}, Lcyanogenmod/weatherservice/ServiceRequestResult;->getLocationLookupList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_51

    .line 74
    :cond_47
    iget-object v2, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mClient:Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;

    iget-object v3, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mInfo:Lcyanogenmod/weather/RequestInfo;

    const/4 v4, 0x0

    .line 75
    const/4 v5, -0x4

    .line 74
    invoke-interface {v2, v3, v4, v5}, Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;->setServiceRequestState(Lcyanogenmod/weather/RequestInfo;Lcyanogenmod/weatherservice/ServiceRequestResult;I)V

    goto :goto_14

    .line 77
    :cond_51
    iget-object v2, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mClient:Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;

    iget-object v3, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mInfo:Lcyanogenmod/weather/RequestInfo;

    .line 78
    const/4 v4, 0x1

    .line 77
    invoke-interface {v2, v3, p1, v4}, Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;->setServiceRequestState(Lcyanogenmod/weather/RequestInfo;Lcyanogenmod/weatherservice/ServiceRequestResult;I)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_59} :catch_29
    .catchall {:try_start_37 .. :try_end_59} :catchall_34

    goto :goto_14

    .line 59
    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_1a
        :pswitch_37
    .end packed-switch
.end method

.method public fail()V
    .registers 7

    .prologue
    .line 94
    monitor-enter p0

    .line 95
    :try_start_1
    iget-object v2, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mStatus:Lcyanogenmod/weatherservice/ServiceRequest$Status;

    sget-object v3, Lcyanogenmod/weatherservice/ServiceRequest$Status;->IN_PROGRESS:Lcyanogenmod/weatherservice/ServiceRequest$Status;

    invoke-virtual {v2, v3}, Lcyanogenmod/weatherservice/ServiceRequest$Status;->equals(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_30

    move-result v2

    if-eqz v2, :cond_18

    .line 97
    :try_start_b
    iget-object v2, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mInfo:Lcyanogenmod/weather/RequestInfo;

    invoke-virtual {v2}, Lcyanogenmod/weather/RequestInfo;->getRequestType()I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_24
    .catchall {:try_start_b .. :try_end_10} :catchall_30

    move-result v1

    .line 98
    .local v1, "requestType":I
    packed-switch v1, :pswitch_data_34

    .line 111
    .end local v1    # "requestType":I
    :goto_14
    :try_start_14
    sget-object v2, Lcyanogenmod/weatherservice/ServiceRequest$Status;->FAILED:Lcyanogenmod/weatherservice/ServiceRequest$Status;

    iput-object v2, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mStatus:Lcyanogenmod/weatherservice/ServiceRequest$Status;
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_30

    :cond_18
    monitor-exit p0

    .line 93
    return-void

    .line 101
    .restart local v1    # "requestType":I
    :pswitch_1a
    :try_start_1a
    iget-object v2, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mClient:Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;

    iget-object v3, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mInfo:Lcyanogenmod/weather/RequestInfo;

    const/4 v4, 0x0

    .line 102
    const/4 v5, -0x1

    .line 101
    invoke-interface {v2, v3, v4, v5}, Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;->setServiceRequestState(Lcyanogenmod/weather/RequestInfo;Lcyanogenmod/weatherservice/ServiceRequestResult;I)V

    goto :goto_14

    .line 109
    .end local v1    # "requestType":I
    :catch_24
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_14

    .line 105
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "requestType":I
    :pswitch_26
    iget-object v2, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mClient:Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;

    iget-object v3, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mInfo:Lcyanogenmod/weather/RequestInfo;

    const/4 v4, 0x0

    .line 106
    const/4 v5, -0x1

    .line 105
    invoke-interface {v2, v3, v4, v5}, Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;->setServiceRequestState(Lcyanogenmod/weather/RequestInfo;Lcyanogenmod/weatherservice/ServiceRequestResult;I)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_2f} :catch_24
    .catchall {:try_start_1a .. :try_end_2f} :catchall_30

    goto :goto_14

    .line 94
    .end local v1    # "requestType":I
    :catchall_30
    move-exception v2

    monitor-exit p0

    throw v2

    .line 98
    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_1a
        :pswitch_26
    .end packed-switch
.end method

.method public getRequestInfo()Lcyanogenmod/weather/RequestInfo;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mInfo:Lcyanogenmod/weather/RequestInfo;

    return-object v0
.end method

.method public reject(I)V
    .registers 6
    .param p1, "status"    # I

    .prologue
    .line 127
    monitor-enter p0

    .line 128
    :try_start_1
    iget-object v1, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mStatus:Lcyanogenmod/weatherservice/ServiceRequest$Status;

    sget-object v2, Lcyanogenmod/weatherservice/ServiceRequest$Status;->IN_PROGRESS:Lcyanogenmod/weatherservice/ServiceRequest$Status;

    invoke-virtual {v1, v2}, Lcyanogenmod/weatherservice/ServiceRequest$Status;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 129
    packed-switch p1, :pswitch_data_3e

    .line 139
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t reject with status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_28

    .line 127
    :catchall_28
    move-exception v1

    monitor-exit p0

    throw v1

    .line 133
    :pswitch_2b
    :try_start_2b
    iget-object v1, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mClient:Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;

    iget-object v2, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mInfo:Lcyanogenmod/weather/RequestInfo;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, p1}, Lcyanogenmod/weatherservice/IWeatherProviderServiceClient;->setServiceRequestState(Lcyanogenmod/weather/RequestInfo;Lcyanogenmod/weatherservice/ServiceRequestResult;I)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_33} :catch_39
    .catchall {:try_start_2b .. :try_end_33} :catchall_28

    .line 141
    :goto_33
    :try_start_33
    sget-object v1, Lcyanogenmod/weatherservice/ServiceRequest$Status;->REJECTED:Lcyanogenmod/weatherservice/ServiceRequest$Status;

    iput-object v1, p0, Lcyanogenmod/weatherservice/ServiceRequest;->mStatus:Lcyanogenmod/weatherservice/ServiceRequest$Status;
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_28

    :cond_37
    monitor-exit p0

    .line 126
    return-void

    .line 134
    :catch_39
    move-exception v0

    .line 135
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3a
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_28

    goto :goto_33

    .line 129
    :pswitch_data_3e
    .packed-switch -0x3
        :pswitch_2b
        :pswitch_2b
    .end packed-switch
.end method
