.class public Lbr/com/macautomacao/maccomanda/UtilPropriedades;
.super Ljava/lang/Object;
.source "UtilPropriedades.java"


# instance fields
.field private _contexto:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "contexto"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lbr/com/macautomacao/maccomanda/UtilPropriedades;->_contexto:Landroid/content/Context;

    .line 15
    return-void
.end method


# virtual methods
.method public Gravar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "nome"    # Ljava/lang/String;
    .param p2, "valor"    # Ljava/lang/String;

    .prologue
    .line 29
    iget-object v2, p0, Lbr/com/macautomacao/maccomanda/UtilPropriedades;->_contexto:Landroid/content/Context;

    .line 30
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 32
    .local v0, "app_preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 33
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 34
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 35
    return-void
.end method

.method public Ler(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "nome"    # Ljava/lang/String;

    .prologue
    .line 18
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lbr/com/macautomacao/maccomanda/UtilPropriedades;->Ler(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Ler(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "nome"    # Ljava/lang/String;
    .param p2, "valorPadrao"    # Ljava/lang/String;

    .prologue
    .line 22
    iget-object v1, p0, Lbr/com/macautomacao/maccomanda/UtilPropriedades;->_contexto:Landroid/content/Context;

    .line 23
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 25
    .local v0, "app_preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
