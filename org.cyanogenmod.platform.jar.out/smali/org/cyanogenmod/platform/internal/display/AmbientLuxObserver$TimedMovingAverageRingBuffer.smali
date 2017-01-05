.class Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;
.super Ljava/lang/Object;
.source "AmbientLuxObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimedMovingAverageRingBuffer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer$Sample;
    }
.end annotation


# instance fields
.field private final mPeriod:I

.field private final mRing:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer$Sample;",
            ">;"
        }
    .end annotation
.end field

.field private mTotal:F


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "period"    # I

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mRing:Ljava/util/LinkedList;

    .line 189
    const/4 v0, 0x0

    iput v0, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mTotal:F

    .line 206
    iput p1, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mPeriod:I

    .line 205
    return-void
.end method

.method private expire()V
    .registers 7

    .prologue
    .line 233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 234
    .local v0, "now":J
    :goto_4
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mRing:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_31

    .line 235
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mRing:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer$Sample;

    iget-wide v2, v2, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer$Sample;->mTimestamp:J

    sub-long v2, v0, v2

    iget v4, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mPeriod:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_31

    .line 236
    iget v3, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mTotal:F

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mRing:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer$Sample;

    iget v2, v2, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer$Sample;->mValue:F

    sub-float v2, v3, v2

    iput v2, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mTotal:F

    goto :goto_4

    .line 232
    :cond_31
    return-void
.end method


# virtual methods
.method public declared-synchronized add(F)V
    .registers 6
    .param p1, "sample"    # F

    .prologue
    monitor-enter p0

    .line 210
    :try_start_1
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->expire()V

    .line 211
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mRing:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_28

    move-result v0

    if-nez v0, :cond_13

    monitor-exit p0

    .line 212
    return-void

    .line 214
    :cond_13
    :try_start_13
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mRing:Ljava/util/LinkedList;

    new-instance v1, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer$Sample;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, p1}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer$Sample;-><init>(JF)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 215
    iget v0, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mTotal:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mTotal:F
    :try_end_26
    .catchall {:try_start_13 .. :try_end_26} :catchall_28

    monitor-exit p0

    .line 209
    return-void

    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .registers 2

    .prologue
    monitor-enter p0

    .line 228
    :try_start_1
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mRing:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 229
    const/4 v0, 0x0

    iput v0, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mTotal:F
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    .line 227
    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAverage()F
    .registers 3

    .prologue
    monitor-enter p0

    .line 223
    :try_start_1
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->expire()V

    .line 224
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mRing:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_1a

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x0

    :goto_d
    monitor-exit p0

    return v0

    :cond_f
    :try_start_f
    iget v0, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mTotal:F

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mRing:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_1a

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_d

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .registers 2

    .prologue
    monitor-enter p0

    .line 219
    :try_start_1
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mRing:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 5

    .prologue
    monitor-enter p0

    .line 242
    :try_start_1
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->expire()V

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mRing:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer$Sample;>;"
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 245
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_21

    .line 246
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    :cond_21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_29

    goto :goto_f

    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer$Sample;>;"
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :catchall_29
    move-exception v2

    monitor-exit p0

    throw v2

    .line 250
    .restart local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer$Sample;>;"
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_2c
    :try_start_2c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "average="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->getAverage()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->mRing:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 251
    const-string/jumbo v3, " mRing=["

    .line 250
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 251
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 250
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 251
    const-string/jumbo v3, "]"

    .line 250
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6a
    .catchall {:try_start_2c .. :try_end_6a} :catchall_29

    move-result-object v2

    monitor-exit p0

    return-object v2
.end method
