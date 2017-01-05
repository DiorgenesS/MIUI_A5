.class Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;
.super Landroid/os/Handler;
.source "ThemeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/ThemeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResourceProcessingHandler"
.end annotation


# static fields
.field private static final MESSAGE_DEQUEUE_AND_PROCESS_THEME:I = 0x4

.field private static final MESSAGE_QUEUE_THEME_FOR_PROCESSING:I = 0x3


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;


# direct methods
.method public constructor <init>(Lorg/cyanogenmod/platform/internal/ThemeManagerService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/ThemeManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 164
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    .line 165
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 164
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 170
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_d6

    .line 214
    invoke-static {}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown message "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_22
    :goto_22
    return-void

    .line 172
    :pswitch_23
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 173
    .local v3, "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v5}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get13(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6

    .line 174
    :try_start_2e
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v5}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get13(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_54

    .line 176
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v5}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get13(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v5}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get13(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_54

    .line 178
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;->sendEmptyMessage(I)Z
    :try_end_54
    .catchall {:try_start_2e .. :try_end_54} :catchall_56

    :cond_54
    monitor-exit v6

    goto :goto_22

    .line 173
    :catchall_56
    move-exception v5

    monitor-exit v6

    throw v5

    .line 184
    .end local v3    # "pkgName":Ljava/lang/String;
    :pswitch_59
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v5}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get13(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6

    .line 185
    :try_start_60
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v5}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get13(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_6d
    .catchall {:try_start_60 .. :try_end_6d} :catchall_c5

    .restart local v3    # "pkgName":Ljava/lang/String;
    monitor-exit v6

    .line 187
    if-eqz v3, :cond_22

    .line 191
    :try_start_70
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v5}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get8(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 192
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v5, v2}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-wrap0(Lorg/cyanogenmod/platform/internal/ThemeManagerService;Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    :try_end_80
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_70 .. :try_end_80} :catch_c8

    move-result-object v1

    .line 197
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :goto_81
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v5}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get8(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/pm/PackageManager;->processThemeResources(Ljava/lang/String;)I

    move-result v4

    .line 198
    .local v4, "result":I
    if-gez v4, :cond_94

    .line 199
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    if-eqz v1, :cond_cb

    :goto_91
    invoke-static {v5, v1}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-wrap4(Lorg/cyanogenmod/platform/internal/ThemeManagerService;Ljava/lang/String;)V

    .line 201
    :cond_94
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v5, v3, v4}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-wrap6(Lorg/cyanogenmod/platform/internal/ThemeManagerService;Ljava/lang/String;I)V

    .line 203
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v5}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get13(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6

    .line 204
    :try_start_a0
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v5}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get13(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 205
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v5}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-get13(Lorg/cyanogenmod/platform/internal/ThemeManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_bd

    .line 206
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;->hasMessages(I)Z
    :try_end_ba
    .catchall {:try_start_a0 .. :try_end_ba} :catchall_d2

    move-result v5

    if-eqz v5, :cond_cd

    :cond_bd
    :goto_bd
    monitor-exit v6

    .line 210
    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;->this$0:Lorg/cyanogenmod/platform/internal/ThemeManagerService;

    invoke-static {v5, v3}, Lorg/cyanogenmod/platform/internal/ThemeManagerService;->-wrap5(Lorg/cyanogenmod/platform/internal/ThemeManagerService;Ljava/lang/String;)V

    goto/16 :goto_22

    .line 184
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "result":I
    :catchall_c5
    move-exception v5

    monitor-exit v6

    throw v5

    .line 193
    .restart local v3    # "pkgName":Ljava/lang/String;
    :catch_c8
    move-exception v0

    .line 194
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .local v1, "name":Ljava/lang/String;
    goto :goto_81

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1    # "name":Ljava/lang/String;
    .restart local v4    # "result":I
    :cond_cb
    move-object v1, v3

    .line 199
    goto :goto_91

    .line 207
    :cond_cd
    const/4 v5, 0x4

    :try_start_ce
    invoke-virtual {p0, v5}, Lorg/cyanogenmod/platform/internal/ThemeManagerService$ResourceProcessingHandler;->sendEmptyMessage(I)Z
    :try_end_d1
    .catchall {:try_start_ce .. :try_end_d1} :catchall_d2

    goto :goto_bd

    .line 203
    :catchall_d2
    move-exception v5

    monitor-exit v6

    throw v5

    .line 170
    nop

    :pswitch_data_d6
    .packed-switch 0x3
        :pswitch_23
        :pswitch_59
    .end packed-switch
.end method
