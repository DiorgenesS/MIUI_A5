.class public final Lorg/cyanogenmod/internal/util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileUtils"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isFileReadable(Ljava/lang/String;)Z
    .registers 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 102
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public static isFileWritable(Ljava/lang/String;)Z
    .registers 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 112
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public static readOneLine(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 43
    const/4 v2, 0x0

    .line 44
    .local v2, "line":Ljava/lang/String;
    const/4 v3, 0x0

    .line 47
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x200

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_e} :catch_3e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_e} :catch_1b
    .catchall {:try_start_2 .. :try_end_e} :catchall_68

    .line 48
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_e
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_11} :catch_74
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_77
    .catchall {:try_start_e .. :try_end_11} :catchall_71

    move-result-object v2

    .line 55
    .local v2, "line":Ljava/lang/String;
    if-eqz v4, :cond_17

    .line 56
    :try_start_14
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_19

    :cond_17
    :goto_17
    move-object v3, v4

    .line 63
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :cond_18
    :goto_18
    return-object v2

    .line 58
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_19
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_17

    .line 51
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v2, "line":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_1b
    move-exception v1

    .line 52
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_1c
    :try_start_1c
    const-string/jumbo v5, "FileUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Could not read from file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_36
    .catchall {:try_start_1c .. :try_end_36} :catchall_68

    .line 55
    if-eqz v3, :cond_18

    .line 56
    :try_start_38
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_18

    .line 58
    :catch_3c
    move-exception v1

    goto :goto_18

    .line 49
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_3e
    move-exception v0

    .line 50
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_3f
    :try_start_3f
    const-string/jumbo v5, "FileUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "No such file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " for reading"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_60
    .catchall {:try_start_3f .. :try_end_60} :catchall_68

    .line 55
    if-eqz v3, :cond_18

    .line 56
    :try_start_62
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_18

    .line 58
    :catch_66
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_18

    .line 53
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_68
    move-exception v5

    .line 55
    :goto_69
    if-eqz v3, :cond_6e

    .line 56
    :try_start_6b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_6f

    .line 53
    :cond_6e
    :goto_6e
    throw v5

    .line 58
    :catch_6f
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_6e

    .line 53
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_71
    move-exception v5

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    goto :goto_69

    .line 49
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_74
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_3f

    .line 51
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_77
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_1c
.end method

.method public static writeLine(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 72
    const/4 v2, 0x0

    .line 75
    .local v2, "writer":Ljava/io/BufferedWriter;
    :try_start_2
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_c} :catch_3b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_18
    .catchall {:try_start_2 .. :try_end_c} :catchall_65

    .line 76
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .local v3, "writer":Ljava/io/BufferedWriter;
    :try_start_c
    invoke-virtual {v3, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_f} :catch_71
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_74
    .catchall {:try_start_c .. :try_end_f} :catchall_6e

    .line 85
    if-eqz v3, :cond_14

    .line 86
    :try_start_11
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_16

    .line 93
    :cond_14
    :goto_14
    const/4 v4, 0x1

    return v4

    .line 88
    :catch_16
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_14

    .line 80
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :catch_18
    move-exception v1

    .line 81
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_19
    :try_start_19
    const-string/jumbo v4, "FileUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not write to file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_19 .. :try_end_33} :catchall_65

    .line 85
    if-eqz v2, :cond_38

    .line 86
    :try_start_35
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    .line 82
    :cond_38
    :goto_38
    return v7

    .line 88
    :catch_39
    move-exception v1

    goto :goto_38

    .line 77
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :catch_3b
    move-exception v0

    .line 78
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_3c
    :try_start_3c
    const-string/jumbo v4, "FileUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No such file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " for writing"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5d
    .catchall {:try_start_3c .. :try_end_5d} :catchall_65

    .line 85
    if-eqz v2, :cond_62

    .line 86
    :try_start_5f
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_63

    .line 79
    :cond_62
    :goto_62
    return v7

    .line 88
    :catch_63
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_62

    .line 83
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_65
    move-exception v4

    .line 85
    :goto_66
    if-eqz v2, :cond_6b

    .line 86
    :try_start_68
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6c

    .line 83
    :cond_6b
    :goto_6b
    throw v4

    .line 88
    :catch_6c
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_6b

    .line 83
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    :catchall_6e
    move-exception v4

    move-object v2, v3

    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .local v2, "writer":Ljava/io/BufferedWriter;
    goto :goto_66

    .line 77
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    :catch_71
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v2, v3

    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    goto :goto_3c

    .line 80
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    :catch_74
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v2, v3

    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    goto :goto_19
.end method
