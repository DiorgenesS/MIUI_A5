.class Lcom/android/server/backup/BackupManagerService$FullBackupEngine;
.super Ljava/lang/Object;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullBackupEngine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;
    }
.end annotation


# instance fields
.field mFilesDir:Ljava/io/File;

.field mIncludeApks:Z

.field mManifestFile:Ljava/io/File;

.field mMetadataFile:Ljava/io/File;

.field mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field mOutput:Ljava/io/OutputStream;

.field mPreflightHook:Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/content/pm/PackageInfo;Landroid/app/backup/FullBackupDataOutput;)V
    .locals 0
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p2, "output"    # Landroid/app/backup/FullBackupDataOutput;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->writeApkToBackup(Landroid/content/pm/PackageInfo;Landroid/app/backup/FullBackupDataOutput;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/content/pm/PackageInfo;Ljava/io/File;ZZ)V
    .locals 0
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p2, "manifestFile"    # Ljava/io/File;
    .param p3, "withApk"    # Z
    .param p4, "withWidgets"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->writeAppManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;ZZ)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/content/pm/PackageInfo;Ljava/io/File;[B)V
    .locals 0
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p2, "destination"    # Ljava/io/File;
    .param p3, "widgetData"    # [B

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->writeMetadata(Landroid/content/pm/PackageInfo;Ljava/io/File;[B)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Ljava/io/OutputStream;Ljava/lang/String;Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;Z)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "output"    # Ljava/io/OutputStream;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "preflightHook"    # Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;
    .param p5, "alsoApks"    # Z

    .prologue
    .line 3388
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3390
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    .line 3391
    iput-object p4, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPreflightHook:Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;

    .line 3392
    iput-boolean p5, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mIncludeApks:Z

    .line 3393
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/system"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mFilesDir:Ljava/io/File;

    .line 3394
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mFilesDir:Ljava/io/File;

    const-string/jumbo v2, "_manifest"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mManifestFile:Ljava/io/File;

    .line 3395
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mFilesDir:Ljava/io/File;

    const-string/jumbo v2, "_meta"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mMetadataFile:Ljava/io/File;

    .line 3389
    return-void
.end method

.method private tearDown(Landroid/content/pm/PackageInfo;)V
    .locals 3
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v1}, Lcom/android/server/backup/BackupManagerService;->access_mActivityManager(Lcom/android/server/backup/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/android/server/backup/BackupManagerServiceInjector;->tearDownAgentAndKill(Landroid/app/IActivityManager;Landroid/content/pm/ApplicationInfo;I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_0
    return-void
.end method

.method private writeApkToBackup(Landroid/content/pm/PackageInfo;Landroid/app/backup/FullBackupDataOutput;)V
    .locals 16
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p2, "output"    # Landroid/app/backup/FullBackupDataOutput;

    .prologue
    .line 3482
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v5

    .line 3483
    .local v5, "appSourceDir":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    .line 3484
    .local v4, "apkDir":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v2, "a"

    const/4 v3, 0x0

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v6}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 3492
    new-instance v15, Landroid/os/Environment$UserEnvironment;

    const/4 v1, 0x0

    invoke-direct {v15, v1}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 3493
    .local v15, "userEnv":Landroid/os/Environment$UserEnvironment;
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v13, v1, v2

    .line 3494
    .local v13, "obbDir":Ljava/io/File;
    if-eqz v13, :cond_0

    .line 3496
    invoke-virtual {v13}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v14

    .line 3497
    .local v14, "obbFiles":[Ljava/io/File;
    if-eqz v14, :cond_0

    .line 3498
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 3499
    .local v9, "obbDirName":Ljava/lang/String;
    const/4 v1, 0x0

    array-length v2, v14

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v12, v14, v1

    .line 3500
    .local v12, "obb":Ljava/io/File;
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v7, "obb"

    .line 3501
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 3500
    const/4 v8, 0x0

    move-object/from16 v11, p2

    invoke-static/range {v6 .. v11}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 3499
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3479
    .end local v9    # "obbDirName":Ljava/lang/String;
    .end local v12    # "obb":Ljava/io/File;
    .end local v14    # "obbFiles":[Ljava/io/File;
    :cond_0
    return-void
.end method

.method private writeAppManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;ZZ)V
    .locals 9
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p2, "manifestFile"    # Ljava/io/File;
    .param p3, "withApk"    # Z
    .param p4, "withWidgets"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3520
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x1000

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3521
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v3, Landroid/util/StringBuilderPrinter;

    invoke-direct {v3, v0}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    .line 3523
    .local v3, "printer":Landroid/util/StringBuilderPrinter;
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3524
    iget-object v5, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3525
    iget v5, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3526
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3528
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->-get2(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3529
    .local v1, "installerName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .end local v1    # "installerName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v1}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3531
    if-eqz p3, :cond_2

    const-string/jumbo v5, "1"

    :goto_1
    invoke-virtual {v3, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3532
    iget-object v5, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v5, :cond_3

    .line 3533
    const-string/jumbo v5, "0"

    invoke-virtual {v3, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3541
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3542
    .local v2, "outstream":Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 3543
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 3550
    const-wide/16 v6, 0x0

    invoke-virtual {p2, v6, v7}, Ljava/io/File;->setLastModified(J)Z

    .line 3508
    return-void

    .line 3529
    .end local v2    # "outstream":Ljava/io/FileOutputStream;
    .restart local v1    # "installerName":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, ""

    goto :goto_0

    .line 3531
    .end local v1    # "installerName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, "0"

    goto :goto_1

    .line 3535
    :cond_3
    iget-object v5, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3536
    iget-object v6, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    array-length v7, v6

    :goto_2
    if-ge v5, v7, :cond_0

    aget-object v4, v6, v5

    .line 3537
    .local v4, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3536
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method private writeMetadata(Landroid/content/pm/PackageInfo;Ljava/io/File;[B)V
    .locals 8
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p2, "destination"    # Ljava/io/File;
    .param p3, "widgetData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3571
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x200

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3572
    .local v0, "b":Ljava/lang/StringBuilder;
    new-instance v4, Landroid/util/StringBuilderPrinter;

    invoke-direct {v4, v0}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    .line 3573
    .local v4, "printer":Landroid/util/StringBuilderPrinter;
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3574
    iget-object v5, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 3576
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3577
    .local v2, "fout":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3578
    .local v1, "bout":Ljava/io/BufferedOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3579
    .local v3, "out":Ljava/io/DataOutputStream;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 3581
    if-eqz p3, :cond_0

    array-length v5, p3

    if-lez v5, :cond_0

    .line 3582
    const v5, 0x1ffed01

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 3583
    array-length v5, p3

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 3584
    invoke-virtual {v3, p3}, Ljava/io/DataOutputStream;->write([B)V

    .line 3586
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 3587
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 3591
    const-wide/16 v6, 0x0

    invoke-virtual {p2, v6, v7}, Ljava/io/File;->setLastModified(J)Z

    .line 3570
    return-void
.end method


# virtual methods
.method public backupOnePackage(Landroid/content/pm/PackageInfo;)I
    .locals 16
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3399
    const/4 v14, 0x0

    .line 3400
    .local v14, "result":I
    const-string/jumbo v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Binding to full backup agent : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 3403
    const/4 v5, 0x1

    .line 3402
    invoke-virtual {v2, v3, v5}, Lcom/android/server/backup/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v4

    .line 3404
    .local v4, "agent":Landroid/app/IBackupAgent;
    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    invoke-static {v4, v2}, Lcom/android/server/backup/BackupManagerServiceInjector;->linkToDeath(Landroid/app/IBackupAgent;I)V

    .line 3405
    const/4 v13, 0x0

    .line 3408
    .local v13, "pipes":[Landroid/os/ParcelFileDescriptor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPreflightHook:Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;

    if-eqz v2, :cond_0

    .line 3409
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mPreflightHook:Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v4}, Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;->preflightFullBackup(Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;)I

    move-result v14

    .line 3416
    :cond_0
    if-nez v14, :cond_2

    .line 3417
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v13

    .line 3419
    .local v13, "pipes":[Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 3420
    .local v10, "app":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v3, "com.android.sharedstoragebackup"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 3421
    .local v12, "isSharedStorage":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mIncludeApks:Z

    if-eqz v2, :cond_1

    .line 3422
    if-eqz v12, :cond_5

    .line 3421
    :cond_1
    const/4 v7, 0x0

    .line 3427
    .local v7, "sendApk":Z
    :goto_0
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 3428
    const/4 v3, 0x0

    .line 3427
    invoke-static {v2, v3}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetState(Ljava/lang/String;I)[B

    move-result-object v9

    .line 3430
    .local v9, "widgetBlob":[B
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->generateToken()I

    move-result v6

    .line 3431
    .local v6, "token":I
    new-instance v1, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;

    const/4 v2, 0x1

    aget-object v5, v13, v2

    .line 3432
    if-eqz v12, :cond_8

    const/4 v8, 0x0

    :goto_1
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 3431
    invoke-direct/range {v1 .. v9}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;-><init>(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;Landroid/os/ParcelFileDescriptor;IZZ[B)V

    .line 3433
    .local v1, "runner":Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;
    const/4 v2, 0x1

    aget-object v2, v13, v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 3434
    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-object v2, v13, v3

    .line 3435
    new-instance v15, Ljava/lang/Thread;

    const-string/jumbo v2, "app-data-runner"

    invoke-direct {v15, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 3436
    .local v15, "t":Ljava/lang/Thread;
    invoke-virtual {v15}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3440
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v3, 0x0

    aget-object v3, v13, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    invoke-static {v2, v3, v5, v0}, Lcom/android/server/backup/BackupManagerServiceInjector;->routeSocketDataToOutput(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3446
    :goto_2
    :try_start_2
    invoke-static {v4, v6}, Lcom/android/server/backup/BackupManagerServiceInjector;->needUpdateToken(Landroid/app/IBackupAgent;I)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2, v6}, Lcom/android/server/backup/BackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3447
    const-string/jumbo v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Full backup failed on package "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3448
    const/16 v14, -0x3eb

    .line 3461
    .end local v1    # "runner":Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;
    .end local v6    # "token":I
    .end local v7    # "sendApk":Z
    .end local v9    # "widgetBlob":[B
    .end local v10    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "isSharedStorage":Z
    .end local v13    # "pipes":[Landroid/os/ParcelFileDescriptor;
    .end local v15    # "t":Ljava/lang/Thread;
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 3462
    if-eqz v13, :cond_4

    .line 3463
    const/4 v2, 0x0

    aget-object v2, v13, v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    aget-object v2, v13, v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 3464
    :cond_3
    const/4 v2, 0x1

    aget-object v2, v13, v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    aget-object v2, v13, v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 3475
    :cond_4
    :goto_3
    invoke-static {v4}, Lcom/android/server/backup/BackupManagerServiceInjector;->unlinkToDeath(Landroid/app/IBackupAgent;)V

    :goto_miui_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->tearDown(Landroid/content/pm/PackageInfo;)V

    .line 3476
    return v14

    .line 3423
    .restart local v10    # "app":Landroid/content/pm/ApplicationInfo;
    .restart local v12    # "isSharedStorage":Z
    .restart local v13    # "pipes":[Landroid/os/ParcelFileDescriptor;
    :cond_5
    :try_start_4
    iget v2, v10, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_1

    .line 3424
    iget v2, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6

    .line 3425
    iget v2, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_7

    const/4 v7, 0x1

    .restart local v7    # "sendApk":Z
    goto/16 :goto_0

    .line 3424
    .end local v7    # "sendApk":Z
    :cond_6
    const/4 v7, 0x1

    .restart local v7    # "sendApk":Z
    goto/16 :goto_0

    .line 3425
    .end local v7    # "sendApk":Z
    :cond_7
    const/4 v7, 0x0

    .restart local v7    # "sendApk":Z
    goto/16 :goto_0

    .line 3432
    .restart local v6    # "token":I
    .restart local v9    # "widgetBlob":[B
    :cond_8
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 3441
    .restart local v1    # "runner":Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;
    .restart local v15    # "t":Ljava/lang/Thread;
    :catch_0
    move-exception v11

    .line 3442
    .local v11, "e":Ljava/io/IOException;
    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "Caught exception reading from agent"

    invoke-static {v2, v3, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3443
    const/16 v14, -0x3eb

    goto :goto_2

    .line 3466
    .end local v1    # "runner":Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;
    .end local v6    # "token":I
    .end local v7    # "sendApk":Z
    .end local v9    # "widgetBlob":[B
    .end local v10    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "e":Ljava/io/IOException;
    .end local v12    # "isSharedStorage":Z
    .end local v13    # "pipes":[Landroid/os/ParcelFileDescriptor;
    .end local v15    # "t":Ljava/lang/Thread;
    :catch_1
    move-exception v11

    .line 3467
    .restart local v11    # "e":Ljava/io/IOException;
    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "Error bringing down backup stack"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3468
    :goto_4
    const/16 v14, -0x3e8

    goto :goto_3

    .line 3455
    .end local v11    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v11

    .line 3456
    .restart local v11    # "e":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error backing up "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3457
    const/16 v14, -0x3eb

    .line 3461
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 3462
    if-eqz v13, :cond_4

    .line 3463
    const/4 v2, 0x0

    aget-object v2, v13, v2

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    aget-object v2, v13, v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 3464
    :cond_9
    const/4 v2, 0x1

    aget-object v2, v13, v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    aget-object v2, v13, v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    .line 3466
    :catch_3
    move-exception v11

    .line 3467
    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "Error bringing down backup stack"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3458
    .end local v11    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 3461
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutput:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 3462
    if-eqz v13, :cond_b

    .line 3463
    const/4 v3, 0x0

    aget-object v3, v13, v3

    if-eqz v3, :cond_a

    const/4 v3, 0x0

    aget-object v3, v13, v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 3464
    :cond_a
    const/4 v3, 0x1

    aget-object v3, v13, v3

    if-eqz v3, :cond_b

    const/4 v3, 0x1

    aget-object v3, v13, v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 3458
    :cond_b
    :goto_5
    throw v2

    .line 3466
    :catch_4
    move-exception v11

    .line 3467
    .restart local v11    # "e":Ljava/io/IOException;
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v5, "Error bringing down backup stack"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3468
    const/16 v14, -0x3e8

    goto :goto_5

    .line 3472
    .end local v11    # "e":Ljava/io/IOException;
    :cond_c
    const-string/jumbo v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to bind to full agent for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3473
    const/16 v14, -0x3eb

    goto/16 :goto_miui_0
.end method
