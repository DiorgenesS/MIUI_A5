.class Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$1;
.super Lcyanogenmod/weatherservice/IWeatherProviderServiceClient$Stub;
.source "CMWeatherManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    .prologue
    .line 70
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-direct {p0}, Lcyanogenmod/weatherservice/IWeatherProviderServiceClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public setServiceRequestState(Lcyanogenmod/weather/RequestInfo;Lcyanogenmod/weatherservice/ServiceRequestResult;I)V
    .registers 13
    .param p1, "requestInfo"    # Lcyanogenmod/weather/RequestInfo;
    .param p2, "result"    # Lcyanogenmod/weatherservice/ServiceRequestResult;
    .param p3, "status"    # I

    .prologue
    const/4 v6, 0x0

    .line 74
    iget-object v7, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-static {v7}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-get3(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 76
    if-nez p1, :cond_c

    monitor-exit v7

    .line 78
    return-void

    .line 81
    :cond_c
    :try_start_c
    iget-object v8, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-static {v8, p3}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-wrap1(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;I)Z
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_53

    move-result v8

    if-nez v8, :cond_16

    monitor-exit v7

    .line 83
    return-void

    .line 86
    :cond_16
    :try_start_16
    invoke-virtual {p1}, Lcyanogenmod/weather/RequestInfo;->getRequestListener()Lcyanogenmod/weather/IRequestInfoListener;

    move-result-object v1

    .line 87
    .local v1, "listener":Lcyanogenmod/weather/IRequestInfoListener;
    invoke-virtual {p1}, Lcyanogenmod/weather/RequestInfo;->getRequestType()I
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_53

    move-result v4

    .line 89
    .local v4, "requestType":I
    packed-switch v4, :pswitch_data_70

    :cond_21
    :goto_21
    monitor-exit v7

    .line 73
    return-void

    .line 92
    :pswitch_23
    const/4 v5, 0x0

    .line 93
    .local v5, "weatherInfo":Lcyanogenmod/weather/WeatherInfo;
    const/4 v6, 0x1

    if-ne p3, v6, :cond_30

    .line 94
    if-eqz p2, :cond_3e

    :try_start_29
    invoke-virtual {p2}, Lcyanogenmod/weatherservice/ServiceRequestResult;->getWeatherInfo()Lcyanogenmod/weather/WeatherInfo;

    move-result-object v5

    .line 95
    .end local v5    # "weatherInfo":Lcyanogenmod/weather/WeatherInfo;
    :goto_2d
    if-nez v5, :cond_40

    .line 99
    const/4 p3, -0x1

    .line 111
    :cond_30
    :goto_30
    iget-object v6, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-static {v6, v1}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-wrap0(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;Lcyanogenmod/weather/IRequestInfoListener;)Z
    :try_end_35
    .catchall {:try_start_29 .. :try_end_35} :catchall_53

    move-result v6

    if-eqz v6, :cond_21

    .line 113
    :try_start_38
    invoke-interface {v1, p1, p3, v5}, Lcyanogenmod/weather/IRequestInfoListener;->onWeatherRequestCompleted(Lcyanogenmod/weather/RequestInfo;ILcyanogenmod/weather/WeatherInfo;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3b} :catch_3c
    .catchall {:try_start_38 .. :try_end_3b} :catchall_53

    goto :goto_21

    .line 115
    :catch_3c
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_21

    .line 94
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v5    # "weatherInfo":Lcyanogenmod/weather/WeatherInfo;
    :cond_3e
    const/4 v5, 0x0

    goto :goto_2d

    .line 101
    .end local v5    # "weatherInfo":Lcyanogenmod/weather/WeatherInfo;
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Lcyanogenmod/weather/RequestInfo;->isQueryOnlyWeatherRequest()Z

    move-result v6

    if-nez v6, :cond_30

    .line 102
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_49
    .catchall {:try_start_40 .. :try_end_49} :catchall_53

    move-result-wide v2

    .line 104
    .local v2, "identity":J
    :try_start_4a
    iget-object v6, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-static {v6, v5}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-wrap2(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;Lcyanogenmod/weather/WeatherInfo;)Z
    :try_end_4f
    .catchall {:try_start_4a .. :try_end_4f} :catchall_56

    .line 106
    :try_start_4f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_53

    goto :goto_30

    .line 74
    .end local v1    # "listener":Lcyanogenmod/weather/IRequestInfoListener;
    .end local v2    # "identity":J
    .end local v4    # "requestType":I
    :catchall_53
    move-exception v6

    monitor-exit v7

    throw v6

    .line 105
    .restart local v1    # "listener":Lcyanogenmod/weather/IRequestInfoListener;
    .restart local v2    # "identity":J
    .restart local v4    # "requestType":I
    :catchall_56
    move-exception v6

    .line 106
    :try_start_57
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 105
    throw v6

    .line 120
    .end local v2    # "identity":J
    :pswitch_5b
    iget-object v8, p0, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;

    invoke-static {v8, v1}, Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;->-wrap0(Lorg/cyanogenmod/platform/internal/CMWeatherManagerService;Lcyanogenmod/weather/IRequestInfoListener;)Z
    :try_end_60
    .catchall {:try_start_57 .. :try_end_60} :catchall_53

    move-result v8

    if-eqz v8, :cond_21

    .line 124
    if-eqz p2, :cond_69

    :try_start_65
    invoke-virtual {p2}, Lcyanogenmod/weatherservice/ServiceRequestResult;->getLocationLookupList()Ljava/util/List;

    move-result-object v6

    .line 123
    :cond_69
    invoke-interface {v1, p1, p3, v6}, Lcyanogenmod/weather/IRequestInfoListener;->onLookupCityRequestCompleted(Lcyanogenmod/weather/RequestInfo;ILjava/util/List;)V
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_6c} :catch_6d
    .catchall {:try_start_65 .. :try_end_6c} :catchall_53

    goto :goto_21

    .line 125
    :catch_6d
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_21

    .line 89
    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_23
        :pswitch_23
        :pswitch_5b
    .end packed-switch
.end method
