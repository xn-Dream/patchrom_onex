.class public Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;
.super Ljava/lang/Object;
.source "LiveGalleryEngine.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TMUS_LiveGalleryEngine"


# instance fields
.field private mCallback:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;

.field private mPassword:Ljava/lang/String;

.field private mPhotoCache:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;

.field private mPhotoListDownloadRunnable:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;

.field private mPhotoListDownloadThread:Ljava/lang/Thread;

.field private mPhotoMgr:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadManager;

.field private mThumbnailCache:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;

.field private mThumbnailMgr:Lcom/htc/socialnetwork/tmo/engine/livegallery/ThumbnailDownloadManager;

.field private mToken:Ljava/lang/String;

.field private mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadManager;->GetInstance()Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPhotoMgr:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadManager;

    .line 32
    invoke-static {}, Lcom/htc/socialnetwork/tmo/engine/livegallery/ThumbnailDownloadManager;->GetInstance()Lcom/htc/socialnetwork/tmo/engine/livegallery/ThumbnailDownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mThumbnailMgr:Lcom/htc/socialnetwork/tmo/engine/livegallery/ThumbnailDownloadManager;

    .line 33
    return-void
.end method


# virtual methods
.method public CancelAllDownloadPhoto()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPhotoMgr:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadManager;

    invoke-virtual {v0}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadManager;->CancelAll()V

    .line 173
    return-void
.end method

.method public CancelAllDownloadThumbnail()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mThumbnailMgr:Lcom/htc/socialnetwork/tmo/engine/livegallery/ThumbnailDownloadManager;

    invoke-virtual {v0}, Lcom/htc/socialnetwork/tmo/engine/livegallery/ThumbnailDownloadManager;->CancelAll()V

    .line 150
    return-void
.end method

.method public CancelDownloadPhoto(Ljava/lang/String;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPhotoMgr:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadManager;

    invoke-virtual {v0, p1}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadManager;->Cancel(Ljava/lang/String;)Z

    .line 166
    return-void
.end method

.method public CancelDownloadPhotoList()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPhotoListDownloadThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPhotoListDownloadRunnable:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPhotoListDownloadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const-string v0, "TMUS_LiveGalleryEngine"

    const-string v1, "CancelDownloadPhotoList"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPhotoListDownloadRunnable:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;

    invoke-virtual {v0}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;->Cancel()V

    .line 127
    :cond_0
    return-void
.end method

.method public CancelDownloadThumbnail(Ljava/lang/String;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mThumbnailMgr:Lcom/htc/socialnetwork/tmo/engine/livegallery/ThumbnailDownloadManager;

    invoke-virtual {v0, p1}, Lcom/htc/socialnetwork/tmo/engine/livegallery/ThumbnailDownloadManager;->Cancel(Ljava/lang/String;)Z

    .line 143
    return-void
.end method

.method public DownloadPhoto(Ljava/lang/String;)V
    .locals 7
    .parameter "uri"

    .prologue
    .line 156
    new-instance v0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mUsername:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPassword:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPhotoCache:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;

    iget-object v6, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mCallback:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;)V

    .line 158
    .local v0, runnable:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;
    iget-object v1, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPhotoMgr:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadManager;

    invoke-virtual {v1, v0}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadManager;->execute(Ljava/lang/Runnable;)V

    .line 159
    return-void
.end method

.method public DownloadPhotoList()V
    .locals 4

    .prologue
    .line 88
    const-string v0, "TMUS_LiveGalleryEngine"

    const-string v1, "DownloadPhotoList"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPhotoListDownloadThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPhotoListDownloadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "TMUS_LiveGalleryEngine"

    const-string v1, "download photo list thread is running"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :goto_0
    return-void

    .line 94
    :cond_0
    new-instance v0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;

    invoke-direct {v0}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;-><init>()V

    iput-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPhotoListDownloadRunnable:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;

    .line 95
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPhotoListDownloadRunnable:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;

    iget-object v1, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mUsername:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPassword:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mCallback:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;->Init(Ljava/lang/String;Ljava/lang/String;Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;)V

    .line 96
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPhotoListDownloadRunnable:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPhotoListDownloadThread:Ljava/lang/Thread;

    .line 97
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPhotoListDownloadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public DownloadPhotoList2()V
    .locals 5

    .prologue
    .line 104
    const-string v0, "TMUS_LiveGalleryEngine"

    const-string v1, "DownloadPhotoList2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPhotoListDownloadThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPhotoListDownloadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const-string v0, "TMUS_LiveGalleryEngine"

    const-string v1, "download photo list thread is running"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_0
    return-void

    .line 110
    :cond_0
    new-instance v0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;

    invoke-direct {v0}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;-><init>()V

    iput-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPhotoListDownloadRunnable:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;

    .line 111
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPhotoListDownloadRunnable:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;

    iget-object v1, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mUsername:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPassword:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mToken:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mCallback:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;->Init2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;)V

    .line 113
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPhotoListDownloadRunnable:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPhotoListDownloadThread:Ljava/lang/Thread;

    .line 114
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPhotoListDownloadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public DownloadThumbnail(Ljava/lang/String;)V
    .locals 7
    .parameter "uri"

    .prologue
    .line 133
    new-instance v0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mUsername:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPassword:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mThumbnailCache:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;

    iget-object v6, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mCallback:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;)V

    .line 135
    .local v0, runnable:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoDownloadThread;
    iget-object v1, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mThumbnailMgr:Lcom/htc/socialnetwork/tmo/engine/livegallery/ThumbnailDownloadManager;

    invoke-virtual {v1, v0}, Lcom/htc/socialnetwork/tmo/engine/livegallery/ThumbnailDownloadManager;->execute(Ljava/lang/Runnable;)V

    .line 136
    return-void
.end method

.method public SetCache(Ljava/lang/String;JJ)V
    .locals 7
    .parameter "path"
    .parameter "photosize"
    .parameter "thumbnailsize"

    .prologue
    .line 39
    const-string v4, "TMUS_LiveGalleryEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SetCache:Path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const-string v4, "TMUS_LiveGalleryEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SetCache:Photosize:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const-string v4, "TMUS_LiveGalleryEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SetCache:Thumbnailsize:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "photo"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, photocache:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "thumbnail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, thumbnailcache:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    .local v0, photoFolder:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 50
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .local v3, thumbnailfolder:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 53
    new-instance v4, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;

    invoke-direct {v4, v1, p2, p3}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;-><init>(Ljava/lang/String;J)V

    iput-object v4, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPhotoCache:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;

    .line 54
    new-instance v4, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;

    invoke-direct {v4, v2, p4, p5}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;-><init>(Ljava/lang/String;J)V

    iput-object v4, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mThumbnailCache:Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoCache;

    .line 55
    return-void
.end method

.method public SetCallback(Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 72
    const-string v0, "TMUS_LiveGalleryEngine"

    const-string v1, "SetCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iput-object p1, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mCallback:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;

    .line 74
    return-void
.end method

.method public SetToken(Ljava/lang/String;)V
    .locals 3
    .parameter "token"

    .prologue
    .line 80
    const-string v0, "TMUS_LiveGalleryEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetToken:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iput-object p1, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mToken:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setUserNamePassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "username"
    .parameter "password"

    .prologue
    .line 61
    const-string v0, "TMUS_LiveGalleryEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetUsername:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v0, "TMUS_LiveGalleryEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetPassword:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iput-object p1, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mUsername:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryEngine;->mPassword:Ljava/lang/String;

    .line 66
    return-void
.end method
