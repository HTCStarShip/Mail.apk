.class Lcom/htc/android/mail/ComposeActivity$2;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ComposeActivity;->showAddAttachmentDialog_picture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ComposeActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ComposeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1159
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$2;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1161
    const/4 v0, 0x0

    .line 1162
    .local v0, intent:Landroid/content/Intent;
    packed-switch p2, :pswitch_data_0

    .line 1173
    :goto_0
    return-void

    .line 1164
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1165
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "RequestedFrom"

    const-string v2, "mail"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1166
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1167
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$2;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const/16 v2, 0xb

    invoke-virtual {v1, v0, v2}, Lcom/htc/android/mail/ComposeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1170
    :pswitch_1
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$2;->this$0:Lcom/htc/android/mail/ComposeActivity;

    const-string v2, "image/*"

    #calls: Lcom/htc/android/mail/ComposeActivity;->launchAlbumFolderPicker(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/android/mail/ComposeActivity;->access$1100(Lcom/htc/android/mail/ComposeActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 1162
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
