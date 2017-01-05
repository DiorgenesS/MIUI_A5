.class public Lcyanogenmod/app/CMStatusBarManager;
.super Ljava/lang/Object;
.source "CMStatusBarManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CMStatusBarManager"

.field private static localLOGV:Z

.field private static sCMStatusBarManagerInstance:Lcyanogenmod/app/CMStatusBarManager;

.field private static sService:Lcyanogenmod/app/ICMStatusBarManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lcyanogenmod/app/CMStatusBarManager;->localLOGV:Z

    .line 51
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 62
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_2c

    .line 63
    iput-object v0, p0, Lcyanogenmod/app/CMStatusBarManager;->mContext:Landroid/content/Context;

    .line 67
    :goto_b
    invoke-virtual {p0}, Lcyanogenmod/app/CMStatusBarManager;->getService()Lcyanogenmod/app/ICMStatusBarManager;

    move-result-object v1

    sput-object v1, Lcyanogenmod/app/CMStatusBarManager;->sService:Lcyanogenmod/app/ICMStatusBarManager;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 70
    const-string/jumbo v2, "org.cyanogenmod.statusbar"

    .line 69
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 70
    sget-object v1, Lcyanogenmod/app/CMStatusBarManager;->sService:Lcyanogenmod/app/ICMStatusBarManager;

    if-nez v1, :cond_2b

    .line 71
    const-string/jumbo v1, "CMStatusBarManager"

    const-string/jumbo v2, "Unable to get CMStatusBarService. The service either crashed, was not started, or the interface has been called to early in SystemServer init"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_2b
    return-void

    .line 65
    :cond_2c
    iput-object p1, p0, Lcyanogenmod/app/CMStatusBarManager;->mContext:Landroid/content/Context;

    goto :goto_b
.end method

.method public static getInstance(Landroid/content/Context;)Lcyanogenmod/app/CMStatusBarManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    sget-object v0, Lcyanogenmod/app/CMStatusBarManager;->sCMStatusBarManagerInstance:Lcyanogenmod/app/CMStatusBarManager;

    if-nez v0, :cond_b

    .line 84
    new-instance v0, Lcyanogenmod/app/CMStatusBarManager;

    invoke-direct {v0, p0}, Lcyanogenmod/app/CMStatusBarManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcyanogenmod/app/CMStatusBarManager;->sCMStatusBarManagerInstance:Lcyanogenmod/app/CMStatusBarManager;

    .line 86
    :cond_b
    sget-object v0, Lcyanogenmod/app/CMStatusBarManager;->sCMStatusBarManagerInstance:Lcyanogenmod/app/CMStatusBarManager;

    return-object v0
.end method


# virtual methods
.method public getService()Lcyanogenmod/app/ICMStatusBarManager;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 237
    sget-object v1, Lcyanogenmod/app/CMStatusBarManager;->sService:Lcyanogenmod/app/ICMStatusBarManager;

    if-eqz v1, :cond_8

    .line 238
    sget-object v1, Lcyanogenmod/app/CMStatusBarManager;->sService:Lcyanogenmod/app/ICMStatusBarManager;

    return-object v1

    .line 240
    :cond_8
    const-string/jumbo v1, "cmstatusbar"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 241
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1a

    .line 242
    invoke-static {v0}, Lcyanogenmod/app/ICMStatusBarManager$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/app/ICMStatusBarManager;

    move-result-object v1

    sput-object v1, Lcyanogenmod/app/CMStatusBarManager;->sService:Lcyanogenmod/app/ICMStatusBarManager;

    .line 243
    sget-object v1, Lcyanogenmod/app/CMStatusBarManager;->sService:Lcyanogenmod/app/ICMStatusBarManager;

    return-object v1

    .line 245
    :cond_1a
    return-object v2
.end method

.method public publishTile(ILcyanogenmod/app/CustomTile;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "customTile"    # Lcyanogenmod/app/CustomTile;

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcyanogenmod/app/CMStatusBarManager;->publishTile(Ljava/lang/String;ILcyanogenmod/app/CustomTile;)V

    .line 102
    return-void
.end method

.method public publishTile(Ljava/lang/String;ILcyanogenmod/app/CustomTile;)V
    .registers 13
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "customTile"    # Lcyanogenmod/app/CustomTile;

    .prologue
    .line 121
    sget-object v0, Lcyanogenmod/app/CMStatusBarManager;->sService:Lcyanogenmod/app/ICMStatusBarManager;

    if-nez v0, :cond_e

    .line 122
    const-string/jumbo v0, "CMStatusBarManager"

    const-string/jumbo v2, "not connected to CMStatusBarManagerService"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void

    .line 126
    :cond_e
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 127
    .local v6, "idOut":[I
    iget-object v0, p0, Lcyanogenmod/app/CMStatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "pkg":Ljava/lang/String;
    sget-boolean v0, Lcyanogenmod/app/CMStatusBarManager;->localLOGV:Z

    if-eqz v0, :cond_4b

    const-string/jumbo v0, "CMStatusBarManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": create("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_4b
    :try_start_4b
    sget-object v0, Lcyanogenmod/app/CMStatusBarManager;->sService:Lcyanogenmod/app/ICMStatusBarManager;

    iget-object v2, p0, Lcyanogenmod/app/CMStatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    .line 130
    invoke-interface/range {v0 .. v7}, Lcyanogenmod/app/ICMStatusBarManager;->createCustomTileWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcyanogenmod/app/CustomTile;[II)V

    .line 132
    const/4 v0, 0x0

    aget v0, v6, v0

    if-eq p2, v0, :cond_8a

    .line 133
    const-string/jumbo v0, "CMStatusBarManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notify: id corrupted: sent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", got back "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v6, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_8a} :catch_8b

    .line 120
    :cond_8a
    :goto_8a
    return-void

    .line 135
    :catch_8b
    move-exception v8

    .line 136
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "CMStatusBarManager"

    const-string/jumbo v2, "warning: no cm status bar service"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a
.end method

.method public publishTileAsUser(Ljava/lang/String;ILcyanogenmod/app/CustomTile;Landroid/os/UserHandle;)V
    .registers 14
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "customTile"    # Lcyanogenmod/app/CustomTile;
    .param p4, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 155
    sget-object v0, Lcyanogenmod/app/CMStatusBarManager;->sService:Lcyanogenmod/app/ICMStatusBarManager;

    if-nez v0, :cond_e

    .line 156
    const-string/jumbo v0, "CMStatusBarManager"

    const-string/jumbo v2, "not connected to CMStatusBarManagerService"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void

    .line 160
    :cond_e
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 161
    .local v6, "idOut":[I
    iget-object v0, p0, Lcyanogenmod/app/CMStatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "pkg":Ljava/lang/String;
    sget-boolean v0, Lcyanogenmod/app/CMStatusBarManager;->localLOGV:Z

    if-eqz v0, :cond_4b

    const-string/jumbo v0, "CMStatusBarManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": create("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_4b
    :try_start_4b
    sget-object v0, Lcyanogenmod/app/CMStatusBarManager;->sService:Lcyanogenmod/app/ICMStatusBarManager;

    iget-object v2, p0, Lcyanogenmod/app/CMStatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    .line 164
    invoke-interface/range {v0 .. v7}, Lcyanogenmod/app/ICMStatusBarManager;->createCustomTileWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcyanogenmod/app/CustomTile;[II)V

    .line 166
    const/4 v0, 0x0

    aget v0, v6, v0

    if-eq p2, v0, :cond_8a

    .line 167
    const-string/jumbo v0, "CMStatusBarManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notify: id corrupted: sent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", got back "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v6, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_8a} :catch_8b

    .line 154
    :cond_8a
    :goto_8a
    return-void

    .line 169
    :catch_8b
    move-exception v8

    .line 170
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "CMStatusBarManager"

    const-string/jumbo v2, "warning: no cm status bar service"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a
.end method

.method public removeTile(I)V
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 183
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcyanogenmod/app/CMStatusBarManager;->removeTile(Ljava/lang/String;I)V

    .line 182
    return-void
.end method

.method public removeTile(Ljava/lang/String;I)V
    .registers 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 196
    sget-object v2, Lcyanogenmod/app/CMStatusBarManager;->sService:Lcyanogenmod/app/ICMStatusBarManager;

    if-nez v2, :cond_e

    .line 197
    const-string/jumbo v2, "CMStatusBarManager"

    const-string/jumbo v3, "not connected to CMStatusBarManagerService"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-void

    .line 201
    :cond_e
    iget-object v2, p0, Lcyanogenmod/app/CMStatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "pkg":Ljava/lang/String;
    sget-boolean v2, Lcyanogenmod/app/CMStatusBarManager;->localLOGV:Z

    if-eqz v2, :cond_3d

    const-string/jumbo v2, "CMStatusBarManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": remove("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_3d
    :try_start_3d
    sget-object v2, Lcyanogenmod/app/CMStatusBarManager;->sService:Lcyanogenmod/app/ICMStatusBarManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v1, p1, p2, v3}, Lcyanogenmod/app/ICMStatusBarManager;->removeCustomTileWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_46} :catch_47

    .line 195
    :goto_46
    return-void

    .line 205
    :catch_47
    move-exception v0

    .line 206
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "CMStatusBarManager"

    const-string/jumbo v3, "warning: no cm status bar service"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46
.end method

.method public removeTileAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    .registers 9
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 222
    sget-object v2, Lcyanogenmod/app/CMStatusBarManager;->sService:Lcyanogenmod/app/ICMStatusBarManager;

    if-nez v2, :cond_e

    .line 223
    const-string/jumbo v2, "CMStatusBarManager"

    const-string/jumbo v3, "not connected to CMStatusBarManagerService"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void

    .line 227
    :cond_e
    iget-object v2, p0, Lcyanogenmod/app/CMStatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "pkg":Ljava/lang/String;
    sget-boolean v2, Lcyanogenmod/app/CMStatusBarManager;->localLOGV:Z

    if-eqz v2, :cond_3d

    const-string/jumbo v2, "CMStatusBarManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": remove("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_3d
    :try_start_3d
    sget-object v2, Lcyanogenmod/app/CMStatusBarManager;->sService:Lcyanogenmod/app/ICMStatusBarManager;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-interface {v2, v1, p1, p2, v3}, Lcyanogenmod/app/ICMStatusBarManager;->removeCustomTileWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_46} :catch_47

    .line 221
    :goto_46
    return-void

    .line 231
    :catch_47
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_46
.end method
