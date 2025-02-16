.class Lbr/com/macautomacao/maccomanda/ActivityCartao$3;
.super Ljava/lang/Object;
.source "ActivityCartao.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/macautomacao/maccomanda/ActivityCartao;->ConfirmarClique()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbr/com/macautomacao/maccomanda/ActivityCartao;


# direct methods
.method constructor <init>(Lbr/com/macautomacao/maccomanda/ActivityCartao;)V
    .locals 0
    .param p1, "this$0"    # Lbr/com/macautomacao/maccomanda/ActivityCartao;

    .prologue
    .line 59
    iput-object p1, p0, Lbr/com/macautomacao/maccomanda/ActivityCartao$3;->this$0:Lbr/com/macautomacao/maccomanda/ActivityCartao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 62
    iget-object v0, p0, Lbr/com/macautomacao/maccomanda/ActivityCartao$3;->this$0:Lbr/com/macautomacao/maccomanda/ActivityCartao;

    invoke-static {v0}, Lbr/com/macautomacao/maccomanda/ActivityCartao;->access$000(Lbr/com/macautomacao/maccomanda/ActivityCartao;)V

    .line 63
    return-void
.end method
