.class Lcom/htc/android/mail/easclient/AccountNameSetting$5;
.super Ljava/lang/Object;
.source "AccountNameSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easclient/AccountNameSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/AccountNameSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 507
    iput-object p1, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$5;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 509
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 510
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/android/mail/easclient/AccountNameSetting$5;->this$0:Lcom/htc/android/mail/easclient/AccountNameSetting;

    const/16 v2, 0x32

    invoke-virtual {v1, v0, v2}, Lcom/htc/android/mail/easclient/AccountNameSetting;->startActivityForResult(Landroid/content/Intent;I)V

    .line 511
    return-void
.end method
