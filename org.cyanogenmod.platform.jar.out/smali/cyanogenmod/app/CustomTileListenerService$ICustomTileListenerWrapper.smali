.class Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;
.super Lcyanogenmod/app/ICustomTileListener$Stub;
.source "CustomTileListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/app/CustomTileListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ICustomTileListenerWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcyanogenmod/app/CustomTileListenerService;


# direct methods
.method private constructor <init>(Lcyanogenmod/app/CustomTileListenerService;)V
    .registers 2
    .param p1, "this$0"    # Lcyanogenmod/app/CustomTileListenerService;

    .prologue
    .line 122
    iput-object p1, p0, Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;->this$0:Lcyanogenmod/app/CustomTileListenerService;

    invoke-direct {p0}, Lcyanogenmod/app/ICustomTileListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcyanogenmod/app/CustomTileListenerService;Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;)V
    .registers 3
    .param p1, "this$0"    # Lcyanogenmod/app/CustomTileListenerService;

    .prologue
    invoke-direct {p0, p1}, Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;-><init>(Lcyanogenmod/app/CustomTileListenerService;)V

    return-void
.end method


# virtual methods
.method public onCustomTilePosted(Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder;)V
    .registers 8
    .param p1, "sbcHolder"    # Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder;

    .prologue
    .line 137
    :try_start_0
    invoke-interface {p1}, Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder;->get()Lcyanogenmod/app/StatusBarPanelCustomTile;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_12

    move-result-object v1

    .line 142
    .local v1, "sbc":Lcyanogenmod/app/StatusBarPanelCustomTile;
    iget-object v3, p0, Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;->this$0:Lcyanogenmod/app/CustomTileListenerService;

    invoke-static {v3}, Lcyanogenmod/app/CustomTileListenerService;->-get1(Lcyanogenmod/app/CustomTileListenerService;)Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;

    move-result-object v4

    monitor-enter v4

    .line 144
    :try_start_b
    iget-object v3, p0, Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;->this$0:Lcyanogenmod/app/CustomTileListenerService;

    invoke-virtual {v3, v1}, Lcyanogenmod/app/CustomTileListenerService;->onCustomTilePosted(Lcyanogenmod/app/StatusBarPanelCustomTile;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_10} :catch_20
    .catchall {:try_start_b .. :try_end_10} :catchall_2e

    :goto_10
    monitor-exit v4

    .line 134
    return-void

    .line 138
    .end local v1    # "sbc":Lcyanogenmod/app/StatusBarPanelCustomTile;
    :catch_12
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;->this$0:Lcyanogenmod/app/CustomTileListenerService;

    invoke-static {v3}, Lcyanogenmod/app/CustomTileListenerService;->-get0(Lcyanogenmod/app/CustomTileListenerService;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "onCustomTilePosted: Error receiving StatusBarPanelCustomTile"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    return-void

    .line 145
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "sbc":Lcyanogenmod/app/StatusBarPanelCustomTile;
    :catch_20
    move-exception v2

    .line 146
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_21
    iget-object v3, p0, Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;->this$0:Lcyanogenmod/app/CustomTileListenerService;

    invoke-static {v3}, Lcyanogenmod/app/CustomTileListenerService;->-get0(Lcyanogenmod/app/CustomTileListenerService;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "Error running onCustomTilePosted"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2d
    .catchall {:try_start_21 .. :try_end_2d} :catchall_2e

    goto :goto_10

    .line 142
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_2e
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public onCustomTileRemoved(Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder;)V
    .registers 8
    .param p1, "sbcHolder"    # Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder;

    .prologue
    .line 154
    :try_start_0
    invoke-interface {p1}, Lorg/cyanogenmod/internal/statusbar/IStatusBarCustomTileHolder;->get()Lcyanogenmod/app/StatusBarPanelCustomTile;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_12

    move-result-object v1

    .line 159
    .local v1, "sbc":Lcyanogenmod/app/StatusBarPanelCustomTile;
    iget-object v3, p0, Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;->this$0:Lcyanogenmod/app/CustomTileListenerService;

    invoke-static {v3}, Lcyanogenmod/app/CustomTileListenerService;->-get1(Lcyanogenmod/app/CustomTileListenerService;)Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;

    move-result-object v4

    monitor-enter v4

    .line 161
    :try_start_b
    iget-object v3, p0, Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;->this$0:Lcyanogenmod/app/CustomTileListenerService;

    invoke-virtual {v3, v1}, Lcyanogenmod/app/CustomTileListenerService;->onCustomTileRemoved(Lcyanogenmod/app/StatusBarPanelCustomTile;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_10} :catch_20
    .catchall {:try_start_b .. :try_end_10} :catchall_2e

    :goto_10
    monitor-exit v4

    .line 151
    return-void

    .line 155
    .end local v1    # "sbc":Lcyanogenmod/app/StatusBarPanelCustomTile;
    :catch_12
    move-exception v0

    .line 156
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;->this$0:Lcyanogenmod/app/CustomTileListenerService;

    invoke-static {v3}, Lcyanogenmod/app/CustomTileListenerService;->-get0(Lcyanogenmod/app/CustomTileListenerService;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "onCustomTileRemoved: Error receiving StatusBarPanelCustomTile"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    return-void

    .line 162
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "sbc":Lcyanogenmod/app/StatusBarPanelCustomTile;
    :catch_20
    move-exception v2

    .line 163
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_21
    iget-object v3, p0, Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;->this$0:Lcyanogenmod/app/CustomTileListenerService;

    invoke-static {v3}, Lcyanogenmod/app/CustomTileListenerService;->-get0(Lcyanogenmod/app/CustomTileListenerService;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "Error running onCustomTileRemoved"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2d
    .catchall {:try_start_21 .. :try_end_2d} :catchall_2e

    goto :goto_10

    .line 159
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_2e
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public onListenerConnected()V
    .registers 5

    .prologue
    .line 125
    iget-object v1, p0, Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;->this$0:Lcyanogenmod/app/CustomTileListenerService;

    invoke-static {v1}, Lcyanogenmod/app/CustomTileListenerService;->-get1(Lcyanogenmod/app/CustomTileListenerService;)Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;

    move-result-object v2

    monitor-enter v2

    .line 127
    :try_start_7
    iget-object v1, p0, Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;->this$0:Lcyanogenmod/app/CustomTileListenerService;

    invoke-virtual {v1}, Lcyanogenmod/app/CustomTileListenerService;->onListenerConnected()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_e
    .catchall {:try_start_7 .. :try_end_c} :catchall_1c

    :goto_c
    monitor-exit v2

    .line 124
    return-void

    .line 128
    :catch_e
    move-exception v0

    .line 129
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_f
    iget-object v1, p0, Lcyanogenmod/app/CustomTileListenerService$ICustomTileListenerWrapper;->this$0:Lcyanogenmod/app/CustomTileListenerService;

    invoke-static {v1}, Lcyanogenmod/app/CustomTileListenerService;->-get0(Lcyanogenmod/app/CustomTileListenerService;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "Error running onListenerConnected"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_1c

    goto :goto_c

    .line 125
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_1c
    move-exception v1

    monitor-exit v2

    throw v1
.end method
