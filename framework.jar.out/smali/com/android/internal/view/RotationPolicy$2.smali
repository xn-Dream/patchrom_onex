.class final Lcom/android/internal/view/RotationPolicy$2;
.super Ljava/lang/Object;
.source "RotationPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/internal/view/RotationPolicy$2;->val$enabled:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 110
    :try_start_0
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 112
    .local v1, wm:Landroid/view/IWindowManager;
    iget-boolean v2, p0, Lcom/android/internal/view/RotationPolicy$2;->val$enabled:Z

    if-eqz v2, :cond_0

    .line 113
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->freezeRotation(I)V

    .line 120
    .end local v1           #wm:Landroid/view/IWindowManager;
    :goto_0
    return-void

    .line 115
    .restart local v1       #wm:Landroid/view/IWindowManager;
    :cond_0
    invoke-interface {v1}, Landroid/view/IWindowManager;->thawRotation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    .end local v1           #wm:Landroid/view/IWindowManager;
    :catch_0
    move-exception v0

    .line 118
    .local v0, exc:Landroid/os/RemoteException;
    const-string v2, "RotationPolicy"

    const-string v3, "Unable to save auto-rotate setting"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
