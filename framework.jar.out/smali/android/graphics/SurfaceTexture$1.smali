.class Landroid/graphics/SurfaceTexture$1;
.super Landroid/os/Handler;
.source "SurfaceTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/graphics/SurfaceTexture;

.field final synthetic val$listener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# direct methods
.method constructor <init>(Landroid/graphics/SurfaceTexture;Landroid/os/Looper;Landroid/os/Handler$Callback;ZLandroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/graphics/SurfaceTexture;
    .param p2, "$anonymous0"    # Landroid/os/Looper;
    .param p3, "$anonymous1"    # Landroid/os/Handler$Callback;
    .param p4, "$anonymous2"    # Z
    .param p5, "val$listener"    # Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .prologue
    .line 200
    iput-object p1, p0, Landroid/graphics/SurfaceTexture$1;->this$0:Landroid/graphics/SurfaceTexture;

    iput-object p5, p0, Landroid/graphics/SurfaceTexture$1;->val$listener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 203
    iget-object v0, p0, Landroid/graphics/SurfaceTexture$1;->val$listener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    iget-object v1, p0, Landroid/graphics/SurfaceTexture$1;->this$0:Landroid/graphics/SurfaceTexture;

    invoke-interface {v0, v1}, Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;->onFrameAvailable(Landroid/graphics/SurfaceTexture;)V

    .line 202
    return-void
.end method
