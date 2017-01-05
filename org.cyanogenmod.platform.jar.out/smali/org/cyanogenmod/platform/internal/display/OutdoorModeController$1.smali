.class Lorg/cyanogenmod/platform/internal/display/OutdoorModeController$1;
.super Ljava/lang/Object;
.source "OutdoorModeController.java"

# interfaces
.implements Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;)V
    .registers 2
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;

    .prologue
    .line 222
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController$1;->this$0:Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransition(IF)V
    .registers 6
    .param p1, "state"    # I
    .param p2, "ambientLux"    # F

    .prologue
    .line 225
    const/4 v1, 0x1

    if-ne p1, v1, :cond_11

    const/4 v0, 0x1

    .line 226
    .local v0, "outdoor":Z
    :goto_4
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController$1;->this$0:Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;

    monitor-enter v2

    .line 227
    :try_start_7
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController$1;->this$0:Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->-get0(Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;)Z
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_1f

    move-result v1

    if-ne v1, v0, :cond_13

    monitor-exit v2

    .line 228
    return-void

    .line 225
    .end local v0    # "outdoor":Z
    :cond_11
    const/4 v0, 0x0

    .restart local v0    # "outdoor":Z
    goto :goto_4

    .line 231
    :cond_13
    :try_start_13
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController$1;->this$0:Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;

    invoke-static {v1, v0}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->-set0(Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;Z)Z

    .line 232
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController$1;->this$0:Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;->-wrap0(Lorg/cyanogenmod/platform/internal/display/OutdoorModeController;)V
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_1f

    monitor-exit v2

    .line 224
    return-void

    .line 226
    :catchall_1f
    move-exception v1

    monitor-exit v2

    throw v1
.end method
