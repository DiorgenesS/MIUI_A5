.class Lcyanogenmod/providers/CMSettings$NameValueCache;
.super Ljava/lang/Object;
.source "CMSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/providers/CMSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameValueCache"
.end annotation


# static fields
.field private static final NAME_EQ_PLACEHOLDER:Ljava/lang/String; = "name=?"

.field private static final SELECT_VALUE:[Ljava/lang/String;


# instance fields
.field private final mCallGetCommand:Ljava/lang/String;

.field private final mCallSetCommand:Ljava/lang/String;

.field private mContentProvider:Landroid/content/IContentProvider;

.field private final mUri:Landroid/net/Uri;

.field private final mValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mValuesVersion:J

.field private final mVersionSystemProperty:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 136
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "value"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 135
    sput-object v0, Lcyanogenmod/providers/CMSettings$NameValueCache;->SELECT_VALUE:[Ljava/lang/String;

    .line 131
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "versionSystemProperty"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "getCommand"    # Ljava/lang/String;
    .param p4, "setCommand"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcyanogenmod/providers/CMSettings$NameValueCache;->mValues:Ljava/util/HashMap;

    .line 141
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcyanogenmod/providers/CMSettings$NameValueCache;->mValuesVersion:J

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcyanogenmod/providers/CMSettings$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;

    .line 153
    iput-object p1, p0, Lcyanogenmod/providers/CMSettings$NameValueCache;->mVersionSystemProperty:Ljava/lang/String;

    .line 154
    iput-object p2, p0, Lcyanogenmod/providers/CMSettings$NameValueCache;->mUri:Landroid/net/Uri;

    .line 155
    iput-object p3, p0, Lcyanogenmod/providers/CMSettings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    .line 156
    iput-object p4, p0, Lcyanogenmod/providers/CMSettings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    .line 152
    return-void
.end method

.method private lazyGetProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;
    .registers 4
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 161
    monitor-enter p0

    .line 162
    :try_start_1
    iget-object v0, p0, Lcyanogenmod/providers/CMSettings$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;

    .line 163
    .local v0, "cp":Landroid/content/IContentProvider;
    if-nez v0, :cond_11

    .line 164
    iget-object v1, p0, Lcyanogenmod/providers/CMSettings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    .end local v0    # "cp":Landroid/content/IContentProvider;
    iput-object v0, p0, Lcyanogenmod/providers/CMSettings$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .restart local v0    # "cp":Landroid/content/IContentProvider;
    :cond_11
    monitor-exit p0

    .line 167
    return-object v0

    .line 161
    .end local v0    # "cp":Landroid/content/IContentProvider;
    :catchall_13
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .registers 25
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 203
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    move/from16 v0, p3

    if-ne v0, v5, :cond_46

    const/16 v17, 0x1

    .line 204
    .local v17, "isSelf":Z
    :goto_a
    if-eqz v17, :cond_4a

    .line 206
    move-object/from16 v0, p0

    iget-object v5, v0, Lcyanogenmod/providers/CMSettings$NameValueCache;->mVersionSystemProperty:Ljava/lang/String;

    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    .line 209
    .local v18, "newValuesVersion":J
    monitor-enter p0

    .line 210
    :try_start_17
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcyanogenmod/providers/CMSettings$NameValueCache;->mValuesVersion:J

    cmp-long v5, v6, v18

    if-eqz v5, :cond_2c

    .line 216
    move-object/from16 v0, p0

    iget-object v5, v0, Lcyanogenmod/providers/CMSettings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 217
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcyanogenmod/providers/CMSettings$NameValueCache;->mValuesVersion:J

    .line 220
    :cond_2c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcyanogenmod/providers/CMSettings$NameValueCache;->mValues:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 221
    move-object/from16 v0, p0

    iget-object v5, v0, Lcyanogenmod/providers/CMSettings$NameValueCache;->mValues:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_44
    .catchall {:try_start_17 .. :try_end_44} :catchall_89

    monitor-exit p0

    return-object v5

    .line 203
    .end local v17    # "isSelf":Z
    .end local v18    # "newValuesVersion":J
    :cond_46
    const/16 v17, 0x0

    .restart local v17    # "isSelf":Z
    goto :goto_a

    .restart local v18    # "newValuesVersion":J
    :cond_49
    monitor-exit p0

    .line 229
    .end local v18    # "newValuesVersion":J
    :cond_4a
    invoke-direct/range {p0 .. p1}, Lcyanogenmod/providers/CMSettings$NameValueCache;->lazyGetProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v4

    .line 235
    .local v4, "cp":Landroid/content/IContentProvider;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcyanogenmod/providers/CMSettings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    if-eqz v5, :cond_90

    .line 237
    const/4 v12, 0x0

    .line 238
    .local v12, "args":Landroid/os/Bundle;
    if-nez v17, :cond_65

    .line 239
    :try_start_57
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_5c} :catch_8f

    .line 240
    .local v13, "args":Landroid/os/Bundle;
    :try_start_5c
    const-string/jumbo v5, "_user"

    .end local v12    # "args":Landroid/os/Bundle;
    move/from16 v0, p3

    invoke-virtual {v13, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_64} :catch_13e

    move-object v12, v13

    .line 242
    .end local v13    # "args":Landroid/os/Bundle;
    :cond_65
    :try_start_65
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcyanogenmod/providers/CMSettings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v4, v5, v6, v0, v12}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v14

    .line 243
    .local v14, "b":Landroid/os/Bundle;
    if-eqz v14, :cond_90

    .line 244
    invoke-virtual {v14}, Landroid/os/Bundle;->getPairValue()Ljava/lang/String;

    move-result-object v20

    .line 246
    .local v20, "value":Ljava/lang/String;
    if-eqz v17, :cond_88

    .line 247
    monitor-enter p0
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_7c} :catch_8f

    .line 248
    :try_start_7c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcyanogenmod/providers/CMSettings$NameValueCache;->mValues:Ljava/util/HashMap;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_87
    .catchall {:try_start_7c .. :try_end_87} :catchall_8c

    :try_start_87
    monitor-exit p0
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_87 .. :try_end_88} :catch_8f

    .line 255
    :cond_88
    return-object v20

    .line 209
    .end local v4    # "cp":Landroid/content/IContentProvider;
    .end local v14    # "b":Landroid/os/Bundle;
    .end local v20    # "value":Ljava/lang/String;
    .restart local v18    # "newValuesVersion":J
    :catchall_89
    move-exception v5

    monitor-exit p0

    throw v5

    .line 247
    .end local v18    # "newValuesVersion":J
    .restart local v4    # "cp":Landroid/content/IContentProvider;
    .restart local v14    # "b":Landroid/os/Bundle;
    .restart local v20    # "value":Ljava/lang/String;
    :catchall_8c
    move-exception v5

    :try_start_8d
    monitor-exit p0

    throw v5
    :try_end_8f
    .catch Landroid/os/RemoteException; {:try_start_8d .. :try_end_8f} :catch_8f

    .line 259
    .end local v14    # "b":Landroid/os/Bundle;
    .end local v20    # "value":Ljava/lang/String;
    :catch_8f
    move-exception v16

    .line 265
    :cond_90
    :goto_90
    const/4 v15, 0x0

    .line 267
    .local v15, "c":Landroid/database/Cursor;
    :try_start_91
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcyanogenmod/providers/CMSettings$NameValueCache;->mUri:Landroid/net/Uri;

    sget-object v7, Lcyanogenmod/providers/CMSettings$NameValueCache;->SELECT_VALUE:[Ljava/lang/String;

    const-string/jumbo v8, "name=?"

    .line 268
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p2, v9, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 267
    invoke-interface/range {v4 .. v11}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v15

    .line 269
    .local v15, "c":Landroid/database/Cursor;
    if-nez v15, :cond_de

    .line 270
    const-string/jumbo v5, "CMSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Can\'t get key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcyanogenmod/providers/CMSettings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d7
    .catch Landroid/os/RemoteException; {:try_start_91 .. :try_end_d7} :catch_102
    .catchall {:try_start_91 .. :try_end_d7} :catchall_137

    .line 271
    const/4 v5, 0x0

    .line 287
    if-eqz v15, :cond_dd

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 271
    :cond_dd
    return-object v5

    .line 274
    :cond_de
    :try_start_de
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_fc

    const/4 v5, 0x0

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 275
    :goto_e9
    monitor-enter p0
    :try_end_ea
    .catch Landroid/os/RemoteException; {:try_start_de .. :try_end_ea} :catch_102
    .catchall {:try_start_de .. :try_end_ea} :catchall_137

    .line 276
    :try_start_ea
    move-object/from16 v0, p0

    iget-object v5, v0, Lcyanogenmod/providers/CMSettings$NameValueCache;->mValues:Ljava/util/HashMap;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f5
    .catchall {:try_start_ea .. :try_end_f5} :catchall_ff

    :try_start_f5
    monitor-exit p0
    :try_end_f6
    .catch Landroid/os/RemoteException; {:try_start_f5 .. :try_end_f6} :catch_102
    .catchall {:try_start_f5 .. :try_end_f6} :catchall_137

    .line 287
    if-eqz v15, :cond_fb

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 282
    :cond_fb
    return-object v20

    .line 274
    :cond_fc
    const/16 v20, 0x0

    .local v20, "value":Ljava/lang/String;
    goto :goto_e9

    .line 275
    .end local v20    # "value":Ljava/lang/String;
    :catchall_ff
    move-exception v5

    :try_start_100
    monitor-exit p0

    throw v5
    :try_end_102
    .catch Landroid/os/RemoteException; {:try_start_100 .. :try_end_102} :catch_102
    .catchall {:try_start_100 .. :try_end_102} :catchall_137

    .line 283
    .end local v15    # "c":Landroid/database/Cursor;
    :catch_102
    move-exception v16

    .line 284
    .local v16, "e":Landroid/os/RemoteException;
    :try_start_103
    const-string/jumbo v5, "CMSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Can\'t get key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcyanogenmod/providers/CMSettings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_130
    .catchall {:try_start_103 .. :try_end_130} :catchall_137

    .line 285
    const/4 v5, 0x0

    .line 287
    if-eqz v15, :cond_136

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 285
    :cond_136
    return-object v5

    .line 286
    .end local v16    # "e":Landroid/os/RemoteException;
    :catchall_137
    move-exception v5

    .line 287
    if-eqz v15, :cond_13d

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 286
    :cond_13d
    throw v5

    .line 259
    .restart local v13    # "args":Landroid/os/Bundle;
    :catch_13e
    move-exception v16

    .restart local v16    # "e":Landroid/os/RemoteException;
    move-object v12, v13

    .end local v13    # "args":Landroid/os/Bundle;
    .local v12, "args":Landroid/os/Bundle;
    goto/16 :goto_90
.end method

.method public putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 11
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 181
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 182
    .local v0, "arg":Landroid/os/Bundle;
    const-string/jumbo v3, "value"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string/jumbo v3, "_user"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 184
    invoke-direct {p0, p1}, Lcyanogenmod/providers/CMSettings$NameValueCache;->lazyGetProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 185
    .local v1, "cp":Landroid/content/IContentProvider;
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcyanogenmod/providers/CMSettings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    invoke-interface {v1, v3, v4, p2, v0}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_20

    .line 190
    const/4 v3, 0x1

    return v3

    .line 186
    .end local v0    # "arg":Landroid/os/Bundle;
    .end local v1    # "cp":Landroid/content/IContentProvider;
    :catch_20
    move-exception v2

    .line 187
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "CMSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t set key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcyanogenmod/providers/CMSettings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    const/4 v3, 0x0

    return v3
.end method
