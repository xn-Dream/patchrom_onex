.class public Lcom/htc/opensense/widget/SocialnetowrkTextSelectionWatcher;
.super Ljava/lang/Object;
.source "SocialnetowrkTextSelectionWatcher.java"

# interfaces
.implements Lcom/htc/textselection/HtcTextSelectionWrapper$TextSelectionWatcher;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static mWatcher:Lcom/htc/opensense/widget/SocialnetowrkTextSelectionWatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/htc/textselection/HtcTextSelectionWrapper$TextSelectionWatcher;
    .locals 2

    .prologue
    .line 41
    const-class v1, Lcom/htc/opensense/widget/SocialnetowrkTextSelectionWatcher;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lcom/htc/opensense/widget/SocialnetowrkTextSelectionWatcher;->mWatcher:Lcom/htc/opensense/widget/SocialnetowrkTextSelectionWatcher;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/htc/opensense/widget/SocialnetowrkTextSelectionWatcher;

    invoke-direct {v0}, Lcom/htc/opensense/widget/SocialnetowrkTextSelectionWatcher;-><init>()V

    sput-object v0, Lcom/htc/opensense/widget/SocialnetowrkTextSelectionWatcher;->mWatcher:Lcom/htc/opensense/widget/SocialnetowrkTextSelectionWatcher;

    .line 45
    :cond_0
    sget-object v0, Lcom/htc/opensense/widget/SocialnetowrkTextSelectionWatcher;->mWatcher:Lcom/htc/opensense/widget/SocialnetowrkTextSelectionWatcher;

    monitor-exit v1

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onEndSelect(Landroid/widget/TextView;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 23
    instance-of v0, p1, Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 24
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 26
    :cond_0
    return-void
.end method

.method public onStartSelect(Landroid/widget/TextView;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 34
    return-void
.end method
