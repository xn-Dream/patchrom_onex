.class public Lcom/htc/socialnetwork/TaskManager;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "TaskManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final MAX_THREADS:I = 0x2

.field static final MIN_THREADS:I = 0x2

.field static manager:Lcom/htc/socialnetwork/TaskManager;

.field static final queue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/htc/socialnetwork/TaskManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/socialnetwork/TaskManager;->manager:Lcom/htc/socialnetwork/TaskManager;

    return-void
.end method

.method constructor <init>()V
    .locals 7

    .prologue
    const/4 v1, 0x2

    .line 22
    const-wide/16 v3, 0x64

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/htc/socialnetwork/TaskManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object v0, p0

    move v2, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 23
    return-void
.end method

.method public static obtain()Lcom/htc/socialnetwork/TaskManager;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/htc/socialnetwork/TaskManager;->manager:Lcom/htc/socialnetwork/TaskManager;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/htc/socialnetwork/TaskManager;

    invoke-direct {v0}, Lcom/htc/socialnetwork/TaskManager;-><init>()V

    sput-object v0, Lcom/htc/socialnetwork/TaskManager;->manager:Lcom/htc/socialnetwork/TaskManager;

    .line 32
    :cond_0
    sget-object v0, Lcom/htc/socialnetwork/TaskManager;->manager:Lcom/htc/socialnetwork/TaskManager;

    return-object v0
.end method


# virtual methods
.method public cancel(J)Z
    .locals 8
    .parameter "threadId"

    .prologue
    .line 40
    sget-object v5, Lcom/htc/socialnetwork/TaskManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v5

    .line 41
    :try_start_0
    sget-object v4, Lcom/htc/socialnetwork/TaskManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 42
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 43
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    .line 44
    .local v3, r:Ljava/lang/Runnable;
    instance-of v4, v3, Lcom/htc/socialnetwork/ImageDownloadRunnable;

    if-eqz v4, :cond_0

    .line 45
    move-object v0, v3

    check-cast v0, Lcom/htc/socialnetwork/ImageDownloadRunnable;

    move-object v2, v0

    .line 46
    .local v2, mDownload:Lcom/htc/socialnetwork/ImageDownloadRunnable;
    invoke-virtual {v2}, Lcom/htc/socialnetwork/ImageDownloadRunnable;->getId()J

    move-result-wide v6

    cmp-long v4, v6, p1

    if-nez v4, :cond_0

    .line 47
    invoke-virtual {v2}, Lcom/htc/socialnetwork/ImageDownloadRunnable;->cancel()V

    .line 48
    sget-object v4, Lcom/htc/socialnetwork/TaskManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result v4

    monitor-exit v5

    .line 53
    .end local v2           #mDownload:Lcom/htc/socialnetwork/ImageDownloadRunnable;
    .end local v3           #r:Ljava/lang/Runnable;
    :goto_0
    return v4

    .line 52
    :cond_1
    monitor-exit v5

    .line 53
    const/4 v4, 0x0

    goto :goto_0

    .line 52
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public cancelAll()V
    .locals 2

    .prologue
    .line 61
    sget-object v1, Lcom/htc/socialnetwork/TaskManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v1

    .line 62
    :try_start_0
    sget-object v0, Lcom/htc/socialnetwork/TaskManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 63
    monitor-exit v1

    .line 64
    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
