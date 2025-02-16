.class Lbr/com/macautomacao/maccomanda/ActivityAtendente$2;
.super Ljava/lang/Object;
.source "ActivityAtendente.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/macautomacao/maccomanda/ActivityAtendente;->btnFinalizarClique()V
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
    .line 44
    iput-object p1, p0, Lbr/com/macautomacao/maccomanda/ActivityAtendente$2;->this$0:Lbr/com/macautomacao/maccomanda/ActivityAtendente;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 47
    iget-object v0, p0, Lbr/com/macautomacao/maccomanda/ActivityAtendente$2;->this$0:Lbr/com/macautomacao/maccomanda/ActivityAtendente;

    invoke-static {v0}, Lbr/com/macautomacao/maccomanda/ActivityAtendente;->access$000(Lbr/com/macautomacao/maccomanda/ActivityAtendente;)V

    .line 48
    return-void
.end method
