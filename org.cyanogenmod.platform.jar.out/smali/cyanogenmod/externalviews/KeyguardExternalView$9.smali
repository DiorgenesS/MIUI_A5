.class Lcyanogenmod/externalviews/KeyguardExternalView$9;
.super Ljava/lang/Object;
.source "KeyguardExternalView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcyanogenmod/externalviews/KeyguardExternalView;->onScreenTurnedOn()V
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
    .line 358
    iput-object p1, p0, Lcyanogenmod/externalviews/KeyguardExternalView$9;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 362
    :try_start_0
    iget-object v1, p0, Lcyanogenmod/externalviews/KeyguardExternalView$9;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-static {v1}, Lcyanogenmod/externalviews/KeyguardExternalView;->-get3(Lcyanogenmod/externalviews/KeyguardExternalView;)Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;

    move-result-object v1

    invoke-interface {v1}, Lcyanogenmod/externalviews/IKeyguardExternalViewProvider;->onScreenTurnedOn()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 360
    :goto_9
    return-void

    .line 363
    :catch_a
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_9
.end method
