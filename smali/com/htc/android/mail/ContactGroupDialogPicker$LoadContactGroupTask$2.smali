.class Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask$2;
.super Ljava/lang/Object;
.source "ContactGroupDialogPicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask;->onPostExecute([Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask$2;->this$1:Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask$2;->this$1:Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask;

    iget-object v0, v0, Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask;->this$0:Lcom/htc/android/mail/ContactGroupDialogPicker;

    invoke-virtual {v0}, Lcom/htc/android/mail/ContactGroupDialogPicker;->finish()V

    .line 93
    return-void
.end method
