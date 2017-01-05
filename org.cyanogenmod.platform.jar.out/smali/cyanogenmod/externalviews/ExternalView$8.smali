.class Lcyanogenmod/externalviews/ExternalView$8;
.super Ljava/lang/Object;
.source "ExternalView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcyanogenmod/externalviews/ExternalView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcyanogenmod/externalviews/ExternalView;


# direct methods
.method constructor <init>(Lcyanogenmod/externalviews/ExternalView;)V
    .registers 2
    .param p1, "this$0"    # Lcyanogenmod/externalviews/ExternalView;

    .prologue
    .line 220
    iput-object p1, p0, Lcyanogenmod/externalviews/ExternalView$8;->this$0:Lcyanogenmod/externalviews/ExternalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 224
    :try_start_0
    iget-object v1, p0, Lcyanogenmod/externalviews/ExternalView$8;->this$0:Lcyanogenmod/externalviews/ExternalView;

    iget-object v1, v1, Lcyanogenmod/externalviews/ExternalView;->mExternalViewProvider:Lcyanogenmod/externalviews/IExternalViewProvider;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcyanogenmod/externalviews/IExternalViewProvider;->onAttach(Landroid/os/IBinder;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    .line 222
    :goto_8
    return-void

    .line 225
    :catch_9
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_8
.end method
