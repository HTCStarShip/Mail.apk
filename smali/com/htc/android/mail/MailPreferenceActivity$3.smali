.class Lcom/htc/android/mail/MailPreferenceActivity$3;
.super Ljava/lang/Object;
.source "MailPreferenceActivity.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailPreferenceActivity;->setupListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/htc/android/mail/MailPreferenceActivity$3;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 6
    .parameter "preference"

    .prologue
    const/4 v5, 0x0

    .line 299
    sget-boolean v1, Lcom/htc/android/mail/MailPreferenceActivity;->isExchange:Z

    if-eqz v1, :cond_0

    .line 300
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    iget-object v2, p0, Lcom/htc/android/mail/MailPreferenceActivity$3;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    #getter for: Lcom/htc/android/mail/MailPreferenceActivity;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/htc/android/mail/MailPreferenceActivity;->access$100(Lcom/htc/android/mail/MailPreferenceActivity;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/MailPreferenceActivity$3;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    const-class v4, Lcom/htc/android/mail/easclient/ExchangeSvrSetting;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 301
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "intent.eas.from_where"

    const-string v2, "extra.eas.from.mail"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    const-string v1, "intent.eas.mode.wizard"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 303
    iget-object v1, p0, Lcom/htc/android/mail/MailPreferenceActivity$3;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    invoke-virtual {v1, v0, v5}, Lcom/htc/android/mail/MailPreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 311
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 304
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    sget-boolean v1, Lcom/htc/android/mail/MailPreferenceActivity;->isHUX:Z

    if-eqz v1, :cond_1

    .line 305
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    iget-object v2, p0, Lcom/htc/android/mail/MailPreferenceActivity$3;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    #getter for: Lcom/htc/android/mail/MailPreferenceActivity;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/htc/android/mail/MailPreferenceActivity;->access$100(Lcom/htc/android/mail/MailPreferenceActivity;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/MailPreferenceActivity$3;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    const-class v4, Lcom/htc/android/mail/huxservice/HuxEditAccount;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 306
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/android/mail/MailPreferenceActivity$3;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    invoke-virtual {v1, v0, v5}, Lcom/htc/android/mail/MailPreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 308
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    iget-object v2, p0, Lcom/htc/android/mail/MailPreferenceActivity$3;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    #getter for: Lcom/htc/android/mail/MailPreferenceActivity;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/htc/android/mail/MailPreferenceActivity;->access$100(Lcom/htc/android/mail/MailPreferenceActivity;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/MailPreferenceActivity$3;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    const-class v4, Lcom/htc/android/mail/ecEditAccount;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 309
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/android/mail/MailPreferenceActivity$3;->this$0:Lcom/htc/android/mail/MailPreferenceActivity;

    invoke-virtual {v1, v0, v5}, Lcom/htc/android/mail/MailPreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
