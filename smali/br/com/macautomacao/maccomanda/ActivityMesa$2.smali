.class Lbr/com/macautomacao/maccomanda/ActivityMesa$2;
.super Ljava/lang/Object;
.source "ActivityMesa.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/macautomacao/maccomanda/ActivityMesa;->CarregarMesas()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbr/com/macautomacao/maccomanda/ActivityMesa;

.field final synthetic val$dialogSincronizacao:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lbr/com/macautomacao/maccomanda/ActivityMesa;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lbr/com/macautomacao/maccomanda/ActivityMesa;

    .prologue
    .line 57
    iput-object p1, p0, Lbr/com/macautomacao/maccomanda/ActivityMesa$2;->this$0:Lbr/com/macautomacao/maccomanda/ActivityMesa;

    iput-object p2, p0, Lbr/com/macautomacao/maccomanda/ActivityMesa$2;->val$dialogSincronizacao:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 60
    new-instance v2, Lbr/com/macautomacao/maccomanda/Webservice;

    iget-object v3, p0, Lbr/com/macautomacao/maccomanda/ActivityMesa$2;->this$0:Lbr/com/macautomacao/maccomanda/ActivityMesa;

    invoke-virtual {v3}, Lbr/com/macautomacao/maccomanda/ActivityMesa;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lbr/com/macautomacao/maccomanda/Webservice;-><init>(Landroid/content/Context;)V

    .line 62
    .local v2, "ws":Lbr/com/macautomacao/maccomanda/Webservice;
    :try_start_0
    invoke-virtual {v2}, Lbr/com/macautomacao/maccomanda/Webservice;->ObterMesas()Ljava/util/ArrayList;

    move-result-object v1

    .line 64
    .local v1, "mesas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lbr/com/macautomacao/maccomanda/EntidadeMesa;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 65
    iget-object v4, p0, Lbr/com/macautomacao/maccomanda/ActivityMesa$2;->this$0:Lbr/com/macautomacao/maccomanda/ActivityMesa;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbr/com/macautomacao/maccomanda/EntidadeMesa;

    invoke-virtual {v3}, Lbr/com/macautomacao/maccomanda/EntidadeMesa;->getNumero()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lbr/com/macautomacao/maccomanda/ActivityMesa;->access$000(Lbr/com/macautomacao/maccomanda/ActivityMesa;Ljava/lang/String;)V

    .line 85
    .end local v1    # "mesas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lbr/com/macautomacao/maccomanda/EntidadeMesa;>;"
    :goto_0
    return-void

    .line 69
    .restart local v1    # "mesas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lbr/com/macautomacao/maccomanda/EntidadeMesa;>;"
    :cond_0
    iget-object v3, p0, Lbr/com/macautomacao/maccomanda/ActivityMesa$2;->this$0:Lbr/com/macautomacao/maccomanda/ActivityMesa;

    new-instance v4, Lbr/com/macautomacao/maccomanda/AdapterGridMesa;

    iget-object v5, p0, Lbr/com/macautomacao/maccomanda/ActivityMesa$2;->this$0:Lbr/com/macautomacao/maccomanda/ActivityMesa;

    invoke-virtual {v5}, Lbr/com/macautomacao/maccomanda/ActivityMesa;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lbr/com/macautomacao/maccomanda/AdapterGridMesa;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v4, v3, Lbr/com/macautomacao/maccomanda/ActivityMesa;->adapterGridMesa:Lbr/com/macautomacao/maccomanda/AdapterGridMesa;

    .line 71
    iget-object v3, p0, Lbr/com/macautomacao/maccomanda/ActivityMesa$2;->this$0:Lbr/com/macautomacao/maccomanda/ActivityMesa;

    invoke-static {v3}, Lbr/com/macautomacao/maccomanda/ActivityMesa;->access$100(Lbr/com/macautomacao/maccomanda/ActivityMesa;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 83
    .end local v1    # "mesas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lbr/com/macautomacao/maccomanda/EntidadeMesa;>;"
    :goto_1
    iget-object v3, p0, Lbr/com/macautomacao/maccomanda/ActivityMesa$2;->val$dialogSincronizacao:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Lorg/json/JSONException;
    iget-object v3, p0, Lbr/com/macautomacao/maccomanda/ActivityMesa$2;->this$0:Lbr/com/macautomacao/maccomanda/ActivityMesa;

    invoke-virtual {v3}, Lbr/com/macautomacao/maccomanda/ActivityMesa;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 77
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 78
    .local v0, "e":Ljava/io/IOException;
    iget-object v3, p0, Lbr/com/macautomacao/maccomanda/ActivityMesa$2;->this$0:Lbr/com/macautomacao/maccomanda/ActivityMesa;

    invoke-virtual {v3}, Lbr/com/macautomacao/maccomanda/ActivityMesa;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 79
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lbr/com/macautomacao/maccomanda/ActivityMesa$2;->this$0:Lbr/com/macautomacao/maccomanda/ActivityMesa;

    invoke-virtual {v3}, Lbr/com/macautomacao/maccomanda/ActivityMesa;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
