.class Lcyanogenmod/externalviews/KeyguardExternalView$2;
.super Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub;
.source "KeyguardExternalView.java"


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
    .line 157
    iput-object p1, p0, Lcyanogenmod/externalviews/KeyguardExternalView$2;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-direct {p0}, Lcyanogenmod/externalviews/IKeyguardExternalViewCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public collapseNotificationPanel()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 177
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalView$2;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-static {v0}, Lcyanogenmod/externalviews/KeyguardExternalView;->-get7(Lcyanogenmod/externalviews/KeyguardExternalView;)Lcyanogenmod/externalviews/KeyguardExternalView$OnWindowAttachmentChangedListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 189
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalView$2;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-static {v0}, Lcyanogenmod/externalviews/KeyguardExternalView;->-get7(Lcyanogenmod/externalviews/KeyguardExternalView;)Lcyanogenmod/externalviews/KeyguardExternalView$OnWindowAttachmentChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lcyanogenmod/externalviews/KeyguardExternalView$OnWindowAttachmentChangedListener;->onAttachedToWindow()V

    .line 187
    :cond_11
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalView$2;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-static {v0}, Lcyanogenmod/externalviews/KeyguardExternalView;->-get7(Lcyanogenmod/externalviews/KeyguardExternalView;)Lcyanogenmod/externalviews/KeyguardExternalView$OnWindowAttachmentChangedListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 196
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalView$2;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-static {v0}, Lcyanogenmod/externalviews/KeyguardExternalView;->-get7(Lcyanogenmod/externalviews/KeyguardExternalView;)Lcyanogenmod/externalviews/KeyguardExternalView$OnWindowAttachmentChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lcyanogenmod/externalviews/KeyguardExternalView$OnWindowAttachmentChangedListener;->onDetachedFromWindow()V

    .line 194
    :cond_11
    return-void
.end method

.method public requestDismiss()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalView$2;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-static {v0}, Lcyanogenmod/externalviews/KeyguardExternalView;->-get1(Lcyanogenmod/externalviews/KeyguardExternalView;)Lcyanogenmod/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 161
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalView$2;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-static {v0}, Lcyanogenmod/externalviews/KeyguardExternalView;->-get1(Lcyanogenmod/externalviews/KeyguardExternalView;)Lcyanogenmod/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcyanogenmod/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;->requestDismiss()Z

    move-result v0

    return v0

    .line 164
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public requestDismissAndStartActivity(Landroid/content/Intent;)Z
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalView$2;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-static {v0}, Lcyanogenmod/externalviews/KeyguardExternalView;->-get1(Lcyanogenmod/externalviews/KeyguardExternalView;)Lcyanogenmod/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 170
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalView$2;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-static {v0}, Lcyanogenmod/externalviews/KeyguardExternalView;->-get1(Lcyanogenmod/externalviews/KeyguardExternalView;)Lcyanogenmod/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;

    move-result-object v0

    invoke-interface {v0, p1}, Lcyanogenmod/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;->requestDismissAndStartActivity(Landroid/content/Intent;)Z

    move-result v0

    return v0

    .line 173
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public setInteractivity(Z)V
    .registers 3
    .param p1, "isInteractive"    # Z

    .prologue
    .line 183
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalView$2;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-static {v0, p1}, Lcyanogenmod/externalviews/KeyguardExternalView;->-set1(Lcyanogenmod/externalviews/KeyguardExternalView;Z)Z

    .line 182
    return-void
.end method

.method public slideLockscreenIn()V
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalView$2;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-static {v0}, Lcyanogenmod/externalviews/KeyguardExternalView;->-get1(Lcyanogenmod/externalviews/KeyguardExternalView;)Lcyanogenmod/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 203
    iget-object v0, p0, Lcyanogenmod/externalviews/KeyguardExternalView$2;->this$0:Lcyanogenmod/externalviews/KeyguardExternalView;

    invoke-static {v0}, Lcyanogenmod/externalviews/KeyguardExternalView;->-get1(Lcyanogenmod/externalviews/KeyguardExternalView;)Lcyanogenmod/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcyanogenmod/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;->slideLockscreenIn()V

    .line 201
    :cond_11
    return-void
.end method
