.class Lcyanogenmod/externalviews/KeyguardExternalView$1;
.super Ljava/lang/Object;
.source "KeyguardExternalView.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/externalviews/KeyguardExternalView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcyanogenmod/externalviews/KeyguardExternalView;


# direct methods
.method constructor <init>(Lcyanogenmod/externalviews/KeyguardExternalView;)V
    .registers 2
    .param p1, "this$0"    # Lcyanogenmod/externalviews/KeyguardExternalView;

    .prologue
    .line 110
    iput-object p1, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 114
    :try_start_0
    invoke-static {p2}, Lcyanogenmod/externalviews/IExternalViewProviderFactory$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/externalviews/IExternalViewProviderFactory;

    move-result-object v1

    .line 115
    .local v1, "factory":Lcyanogenmod/externalviews/IExternalViewProviderFactory;
    if-eqz v1, :cond_72

    .line 116
    iget-object v2, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    .line 117
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcyanogenmod/externalviews/IExternalViewProviderFactory;->createExternalView(Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v3

    .line 116
    invoke-static {v3}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;

    move-result-object v3

    invoke-static {v2, v3}, Lcyanogenmod/externalviews/KeyguardExternalView;->-set0(Lcyanogenmod/externalviews/KeyguardExternalView;Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;)Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;

    .line 118
    iget-object v2, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-static {v2}, Lcyanogenmod/externalviews/KeyguardExternalView;->-get3(Lcyanogenmod/externalviews/KeyguardExternalView;)Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;

    move-result-object v2

    if-eqz v2, :cond_5b

    .line 119
    iget-object v2, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-static {v2}, Lcyanogenmod/externalviews/KeyguardExternalView;->-get3(Lcyanogenmod/externalviews/KeyguardExternalView;)Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;

    move-result-object v2

    .line 120
    iget-object v3, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-static {v3}, Lcyanogenmod/externalviews/KeyguardExternalView;->-get4(Lcyanogenmod/externalviews/KeyguardExternalView;)Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;

    move-result-object v3

    .line 119
    invoke-interface {v2, v3}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;->registerCallback(Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;)V

    .line 121
    iget-object v2, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-static {v2, p2}, Lcyanogenmod/externalviews/KeyguardExternalView;->-set2(Lcyanogenmod/externalviews/KeyguardExternalView;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 122
    iget-object v2, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-static {v2}, Lcyanogenmod/externalviews/KeyguardExternalView;->-get5(Lcyanogenmod/externalviews/KeyguardExternalView;)Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 123
    iget-object v2, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-static {v2}, Lcyanogenmod/externalviews/KeyguardExternalView;->-wrap0(Lcyanogenmod/externalviews/KeyguardExternalView;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_41} :catch_66
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_41} :catch_66

    .line 134
    .end local v1    # "factory":Lcyanogenmod/externalviews/IExternalViewProviderFactory;
    :goto_41
    iget-object v2, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-static {v2}, Lcyanogenmod/externalviews/KeyguardExternalView;->-get5(Lcyanogenmod/externalviews/KeyguardExternalView;)Landroid/os/IBinder;

    move-result-object v2

    if-eq v2, p2, :cond_5a

    if-eqz p2, :cond_5a

    .line 135
    iget-object v2, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-static {v2}, Lcyanogenmod/externalviews/KeyguardExternalView;->-get2(Lcyanogenmod/externalviews/KeyguardExternalView;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-static {v3}, Lcyanogenmod/externalviews/KeyguardExternalView;->-get6(Lcyanogenmod/externalviews/KeyguardExternalView;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 112
    :cond_5a
    return-void

    .line 125
    .restart local v1    # "factory":Lcyanogenmod/externalviews/IExternalViewProviderFactory;
    :cond_5b
    :try_start_5b
    invoke-static {}, Lcyanogenmod/externalviews/KeyguardExternalView;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Unable to get external view provider"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_65} :catch_66
    .catch Ljava/lang/SecurityException; {:try_start_5b .. :try_end_65} :catch_66

    goto :goto_41

    .line 130
    .end local v1    # "factory":Lcyanogenmod/externalviews/IExternalViewProviderFactory;
    :catch_66
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcyanogenmod/externalviews/KeyguardExternalView;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Unable to connect to service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_41

    .line 128
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "factory":Lcyanogenmod/externalviews/IExternalViewProviderFactory;
    :cond_72
    :try_start_72
    invoke-static {}, Lcyanogenmod/externalviews/KeyguardExternalView;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Unable to get external view provider factory"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_7c} :catch_66
    .catch Ljava/lang/SecurityException; {:try_start_72 .. :try_end_7c} :catch_66

    goto :goto_41
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 7
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x0

    .line 141
    iget-object v1, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-static {v1}, Lcyanogenmod/externalviews/KeyguardExternalView;->-get3(Lcyanogenmod/externalviews/KeyguardExternalView;)Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 143
    :try_start_9
    iget-object v1, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-static {v1}, Lcyanogenmod/externalviews/KeyguardExternalView;->-get3(Lcyanogenmod/externalviews/KeyguardExternalView;)Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;

    move-result-object v1

    .line 144
    iget-object v2, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-static {v2}, Lcyanogenmod/externalviews/KeyguardExternalView;->-get4(Lcyanogenmod/externalviews/KeyguardExternalView;)Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;

    move-result-object v2

    .line 143
    invoke-interface {v1, v2}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;->unregisterCallback(Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_18} :catch_37

    .line 147
    :goto_18
    iget-object v1, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-static {v1, v4}, Lcyanogenmod/externalviews/KeyguardExternalView;->-set0(Lcyanogenmod/externalviews/KeyguardExternalView;Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;)Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;

    .line 149
    :cond_1d
    iget-object v1, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-static {v1}, Lcyanogenmod/externalviews/KeyguardExternalView;->-get5(Lcyanogenmod/externalviews/KeyguardExternalView;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 150
    iget-object v1, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-static {v1}, Lcyanogenmod/externalviews/KeyguardExternalView;->-get5(Lcyanogenmod/externalviews/KeyguardExternalView;)Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 151
    iget-object v1, p0, Lcyanogenmod/externalviews/KeyguardExternalView$1;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-static {v1, v4}, Lcyanogenmod/externalviews/KeyguardExternalView;->-set2(Lcyanogenmod/externalviews/KeyguardExternalView;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 140
    :cond_36
    return-void

    .line 145
    :catch_37
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_18
.end method
