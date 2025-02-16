.class Lbr/com/macautomacao/maccomanda/ActivityAtendente$1;
.super Ljava/lang/Object;
.source "ActivityAtendente.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/macautomacao/maccomanda/ActivityAtendente;->txtSenhaPressionarEnter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbr/com/macautomacao/maccomanda/ActivityAtendente;


# direct methods
.method constructor <init>(Lbr/com/macautomacao/maccomanda/ActivityAtendente;)V
    .locals 0
    .param p1, "this$0"    # Lbr/com/macautomacao/maccomanda/ActivityAtendente;

    .prologue
    .line 30
    iput-object p1, p0, Lbr/com/macautomacao/maccomanda/ActivityAtendente$1;->this$0:Lbr/com/macautomacao/maccomanda/ActivityAtendente;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 33
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 35
    iget-object v0, p0, Lbr/com/macautomacao/maccomanda/ActivityAtendente$1;->this$0:Lbr/com/macautomacao/maccomanda/ActivityAtendente;

    invoke-static {v0}, Lbr/com/macautomacao/maccomanda/ActivityAtendente;->access$000(Lbr/com/macautomacao/maccomanda/ActivityAtendente;)V

    .line 36
    const/4 v0, 0x1

    .line 38
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
