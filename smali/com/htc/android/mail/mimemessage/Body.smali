.class public interface abstract Lcom/htc/android/mail/mimemessage/Body;
.super Ljava/lang/Object;
.source "Body.java"


# virtual methods
.method public abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/mimemessage/MessagingException;
        }
    .end annotation
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/htc/android/mail/mimemessage/MessagingException;
        }
    .end annotation
.end method
