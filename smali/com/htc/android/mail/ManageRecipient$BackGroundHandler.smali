.class Lcom/htc/android/mail/ManageRecipient$BackGroundHandler;
.super Landroid/os/Handler;
.source "ManageRecipient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ManageRecipient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackGroundHandler"
.end annotation


# static fields
.field private static mHandler:Landroid/os/Handler;

.field private static sLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1002
    sput-object v0, Lcom/htc/android/mail/ManageRecipient$BackGroundHandler;->sLooper:Landroid/os/Looper;

    .line 1003
    sput-object v0, Lcom/htc/android/mail/ManageRecipient$BackGroundHandler;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .parameter "looper"

    .prologue
    .line 1027
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1028
    return-void
.end method

.method private static getBackGroundLooper()Landroid/os/Looper;
    .locals 2

    .prologue
    .line 1006
    sget-object v1, Lcom/htc/android/mail/ManageRecipient$BackGroundHandler;->sLooper:Landroid/os/Looper;

    if-nez v1, :cond_0

    .line 1007
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ManageRecipientBackGroundHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1008
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1010
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    sput-object v1, Lcom/htc/android/mail/ManageRecipient$BackGroundHandler;->sLooper:Landroid/os/Looper;

    .line 1012
    :cond_0
    sget-object v1, Lcom/htc/android/mail/ManageRecipient$BackGroundHandler;->sLooper:Landroid/os/Looper;

    return-object v1
.end method

.method public static getInstance()Landroid/os/Handler;
    .locals 3

    .prologue
    .line 1016
    sget-object v0, Lcom/htc/android/mail/ManageRecipient$BackGroundHandler;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 1017
    const-class v1, Lcom/htc/android/mail/ManageRecipient$BackGroundHandler;

    monitor-enter v1

    .line 1018
    :try_start_0
    sget-object v0, Lcom/htc/android/mail/ManageRecipient$BackGroundHandler;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1019
    new-instance v0, Lcom/htc/android/mail/ManageRecipient$BackGroundHandler;

    invoke-static {}, Lcom/htc/android/mail/ManageRecipient$BackGroundHandler;->getBackGroundLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/htc/android/mail/ManageRecipient$BackGroundHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/htc/android/mail/ManageRecipient$BackGroundHandler;->mHandler:Landroid/os/Handler;

    .line 1021
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1023
    :cond_1
    sget-object v0, Lcom/htc/android/mail/ManageRecipient$BackGroundHandler;->mHandler:Landroid/os/Handler;

    return-object v0

    .line 1021
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
