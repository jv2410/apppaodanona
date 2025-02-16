.class Lbr/com/macautomacao/maccomanda/ActivityConfiguracoes$1;
.super Ljava/lang/Object;
.source "ActivityConfiguracoes.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/macautomacao/maccomanda/ActivityConfiguracoes;->CarregarEventos()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbr/com/macautomacao/maccomanda/ActivityConfiguracoes;


# direct methods
.method constructor <init>(Lbr/com/macautomacao/maccomanda/ActivityConfiguracoes;)V
    .locals 0
    .param p1, "this$0"    # Lbr/com/macautomacao/maccomanda/ActivityConfiguracoes;

    .prologue
    .line 22
    iput-object p1, p0, Lbr/com/macautomacao/maccomanda/ActivityConfiguracoes$1;->this$0:Lbr/com/macautomacao/maccomanda/ActivityConfiguracoes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 25
    iget-object v0, p0, Lbr/com/macautomacao/maccomanda/ActivityConfiguracoes$1;->this$0:Lbr/com/macautomacao/maccomanda/ActivityConfiguracoes;

    invoke-static {v0}, Lbr/com/macautomacao/maccomanda/ActivityConfiguracoes;->access$000(Lbr/com/macautomacao/maccomanda/ActivityConfiguracoes;)V

    .line 26
    return-void
.end method
