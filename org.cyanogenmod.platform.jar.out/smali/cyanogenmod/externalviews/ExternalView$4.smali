.class Lcyanogenmod/externalviews/ExternalView$4;
.super Ljava/lang/Object;
.source "ExternalView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcyanogenmod/externalviews/ExternalView;->onActivityResumed(Landroid/app/Activity;)V
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
    .line 154
    iput-object p1, p0, Lcyanogenmod/externalviews/ExternalView$4;->this$0:Lcyanogenmod/externalviews/ExternalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 158
    :try_start_0
    iget-object v1, p0, Lcyanogenmod/externalviews/ExternalView$4;->this$0:Lcyanogenmod/externalviews/ExternalView;

    iget-object v1, v1, Lcyanogenmod/externalviews/ExternalView;->mExternalViewProvider:Lcyanogenmod/externalviews/IExternalViewProvider;

    invoke-interface {v1}, Lcyanogenmod/externalviews/IExternalViewProvider;->onResume()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_13

    .line 161
    :goto_7
    iget-object v1, p0, Lcyanogenmod/externalviews/ExternalView$4;->this$0:Lcyanogenmod/externalviews/ExternalView;

    invoke-virtual {v1}, Lcyanogenmod/externalviews/ExternalView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcyanogenmod/externalviews/ExternalView$4;->this$0:Lcyanogenmod/externalviews/ExternalView;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 156
    return-void

    .line 159
    :catch_13
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_7
.end method
