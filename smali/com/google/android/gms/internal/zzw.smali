.class public Lcom/google/android/gms/internal/zzw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzeo;
.end annotation


# instance fields
.field private zznE:Z

.field private zznk:Lcom/google/android/gms/internal/zzfq;

.field private final zzoA:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/zzt;",
            ">;"
        }
    .end annotation
.end field

.field private final zzoB:Lcom/google/android/gms/internal/zzbs;

.field private final zzoC:Lcom/google/android/gms/internal/zzbs;

.field private final zzoD:Lcom/google/android/gms/internal/zzbs;

.field private final zzoe:Ljava/lang/Object;

.field private final zzoh:Landroid/content/Context;

.field private final zzok:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/zzfa;",
            ">;"
        }
    .end annotation
.end field

.field private zzol:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewTreeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final zzom:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final zzon:Lcom/google/android/gms/internal/zzu;

.field private final zzoo:Lcom/google/android/gms/internal/zzcf;

.field private final zzop:Lcom/google/android/gms/internal/zzfx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzfx",
            "<",
            "Lcom/google/android/gms/internal/zzy;",
            ">;"
        }
    .end annotation
.end field

.field private zzoq:Z

.field private final zzor:Landroid/view/WindowManager;

.field private final zzos:Landroid/os/PowerManager;

.field private final zzot:Landroid/app/KeyguardManager;

.field private zzou:Lcom/google/android/gms/internal/zzx;

.field private zzov:Z

.field private zzow:Z

.field private zzox:Z

.field private zzoy:Z

.field private zzoz:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzfa;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Landroid/view/View;Lcom/google/android/gms/internal/zzcf;)V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzw;->zzoe:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzw;->zznE:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzw;->zzow:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzw;->zzoA:Ljava/util/HashSet;

    new-instance v0, Lcom/google/android/gms/internal/zzw$9;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzw$9;-><init>(Lcom/google/android/gms/internal/zzw;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzw;->zzoB:Lcom/google/android/gms/internal/zzbs;

    new-instance v0, Lcom/google/android/gms/internal/zzw$10;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzw$10;-><init>(Lcom/google/android/gms/internal/zzw;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzw;->zzoC:Lcom/google/android/gms/internal/zzbs;

    new-instance v0, Lcom/google/android/gms/internal/zzw$11;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzw$11;-><init>(Lcom/google/android/gms/internal/zzw;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzw;->zzoD:Lcom/google/android/gms/internal/zzbs;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzw;->zzoo:Lcom/google/android/gms/internal/zzcf;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzw;->zzok:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzw;->zzom:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzw;->zzol:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzw;->zzox:Z

    new-instance v0, Lcom/google/android/gms/internal/zzfq;

    const-wide/16 v2, 0xc8

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/zzfq;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzw;->zznk:Lcom/google/android/gms/internal/zzfq;

    new-instance v0, Lcom/google/android/gms/internal/zzu;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzpX:Ljava/lang/String;

    iget-object v4, p2, Lcom/google/android/gms/internal/zzfa;->zzBs:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzfa;->zzbg()Z

    move-result v5

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzu;-><init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzw;->zzon:Lcom/google/android/gms/internal/zzu;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzw;->zzoo:Lcom/google/android/gms/internal/zzcf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcf;->zzda()Lcom/google/android/gms/internal/zzfx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzw;->zzop:Lcom/google/android/gms/internal/zzfx;

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzw;->zzor:Landroid/view/WindowManager;

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzw;->zzos:Landroid/os/PowerManager;

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzw;->zzot:Landroid/app/KeyguardManager;

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzw;->zzoh:Landroid/content/Context;

    :try_start_0
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/zzw;->zzd(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzw;->zzop:Lcom/google/android/gms/internal/zzfx;

    new-instance v2, Lcom/google/android/gms/internal/zzw$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzw$1;-><init>(Lcom/google/android/gms/internal/zzw;Lorg/json/JSONObject;)V

    new-instance v0, Lcom/google/android/gms/internal/zzw$4;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzw$4;-><init>(Lcom/google/android/gms/internal/zzw;)V

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/zzfx;->zza(Lcom/google/android/gms/internal/zzfx$zzd;Lcom/google/android/gms/internal/zzfx$zza;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzw;->zzop:Lcom/google/android/gms/internal/zzfx;

    new-instance v1, Lcom/google/android/gms/internal/zzw$5;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzw$5;-><init>(Lcom/google/android/gms/internal/zzw;)V

    new-instance v2, Lcom/google/android/gms/internal/zzw$6;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzw$6;-><init>(Lcom/google/android/gms/internal/zzw;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzfx;->zza(Lcom/google/android/gms/internal/zzfx$zzd;Lcom/google/android/gms/internal/zzfx$zza;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tracking ad unit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzw;->zzon:Lcom/google/android/gms/internal/zzu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzu;->zzbf()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaj(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failure while processing active view data."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzw;)Lcom/google/android/gms/internal/zzu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzw;->zzon:Lcom/google/android/gms/internal/zzu;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzw;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzw;->zzoq:Z

    return p1
.end method


# virtual methods
.method protected destroy()V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzw;->zzoe:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzw;->zzbn()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzw;->zzbi()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzw;->zzox:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzw;->zzbk()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzw;->zzop:Lcom/google/android/gms/internal/zzfx;

    new-instance v2, Lcom/google/android/gms/internal/zzw$8;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzw$8;-><init>(Lcom/google/android/gms/internal/zzw;)V

    new-instance v3, Lcom/google/android/gms/internal/zzfx$zzb;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzfx$zzb;-><init>()V

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/zzfx;->zza(Lcom/google/android/gms/internal/zzfx$zzd;Lcom/google/android/gms/internal/zzfx$zza;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzw;->zzoo:Lcom/google/android/gms/internal/zzcf;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzw;->zzop:Lcom/google/android/gms/internal/zzfx;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzcf;->zzb(Lcom/google/android/gms/internal/zzfx;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isScreenOn()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzw;->zzos:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method public onGlobalLayout()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzw;->zzi(Z)V

    return-void
.end method

.method public onScrollChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzw;->zzi(Z)V

    return-void
.end method

.method public pause()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzw;->zzoe:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzw;->zznE:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzw;->zzi(Z)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resume()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzw;->zzoe:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzw;->zznE:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzw;->zzi(Z)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzw;->zzoe:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzw;->zzow:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzw;->zzi(Z)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected zza(ILandroid/util/DisplayMetrics;)I
    .locals 2

    iget v0, p2, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    div-float v0, v1, v0

    float-to-int v0, v0

    return v0
.end method

.method protected zza(Landroid/view/View;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzw;->zzi(Z)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzt;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzw;->zzoA:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzx;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzw;->zzoe:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzw;->zzou:Lcom/google/android/gms/internal/zzx;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected zza(Lcom/google/android/gms/internal/zzy;)V
    .locals 2

    const-string v0, "/updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzw;->zzoB:Lcom/google/android/gms/internal/zzbs;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzy;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzbs;)V

    const-string v0, "/untrackActiveViewUnit"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzw;->zzoC:Lcom/google/android/gms/internal/zzbs;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzy;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzbs;)V

    const-string v0, "/visibilityChanged"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzw;->zzoD:Lcom/google/android/gms/internal/zzbs;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzy;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzbs;)V

    return-void
.end method

.method protected zza(Lorg/json/JSONObject;)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "units"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzw;->zzop:Lcom/google/android/gms/internal/zzfx;

    new-instance v2, Lcom/google/android/gms/internal/zzw$2;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/zzw$2;-><init>(Lcom/google/android/gms/internal/zzw;Lorg/json/JSONObject;)V

    new-instance v1, Lcom/google/android/gms/internal/zzw$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzw$3;-><init>(Lcom/google/android/gms/internal/zzw;)V

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/zzfx;->zza(Lcom/google/android/gms/internal/zzfx$zzd;Lcom/google/android/gms/internal/zzfx$zza;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Skipping active view message."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected zza(Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v1

    :cond_0
    const-string v0, "hashCode"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzw;->zzon:Lcom/google/android/gms/internal/zzu;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzu;->zzbf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method protected zzb(Lcom/google/android/gms/internal/zzy;)V
    .locals 2

    const-string v0, "/visibilityChanged"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzw;->zzoD:Lcom/google/android/gms/internal/zzbs;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzy;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzbs;)V

    const-string v0, "/untrackActiveViewUnit"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzw;->zzoC:Lcom/google/android/gms/internal/zzbs;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzy;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzbs;)V

    const-string v0, "/updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzw;->zzoB:Lcom/google/android/gms/internal/zzbs;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzy;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzbs;)V

    return-void
.end method

.method protected zzbh()V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzw;->zzoe:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzw;->zzoz:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/zzw$7;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzw$7;-><init>(Lcom/google/android/gms/internal/zzw;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzw;->zzoz:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzw;->zzoh:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzw;->zzoz:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected zzbi()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzw;->zzoe:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzw;->zzoz:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzw;->zzoh:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzw;->zzoz:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzw;->zzoz:Landroid/content/BroadcastReceiver;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzbj()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzw;->zzoe:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzw;->zzox:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzw;->zzoy:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzw;->zzbp()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzw;->zza(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Untracking ad unit: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzw;->zzon:Lcom/google/android/gms/internal/zzu;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzu;->zzbf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaj(Ljava/lang/String;)V

    :cond_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const-string v2, "JSON failure while processing active view data."

    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    :try_start_3
    const-string v2, "Failure while processing active view data."

    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method protected zzbk()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzw;->zzou:Lcom/google/android/gms/internal/zzx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzw;->zzou:Lcom/google/android/gms/internal/zzx;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/zzx;->zza(Lcom/google/android/gms/internal/zzw;)V

    :cond_0
    return-void
.end method

.method public zzbl()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzw;->zzoe:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzw;->zzox:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected zzbm()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzw;->zzom:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzw;->zzol:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzw;->zzbn()V

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzw;->zzov:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzw;->zzov:Z

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzw;->zzol:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method protected zzbn()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzw;->zzol:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method protected zzbo()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "afmaVersion"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzw;->zzon:Lcom/google/android/gms/internal/zzu;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzu;->zzbd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "activeViewJSON"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzw;->zzon:Lcom/google/android/gms/internal/zzu;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzu;->zzbe()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzh;->zzaU()Lcom/google/android/gms/internal/zzht;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzht;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "adFormat"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzw;->zzon:Lcom/google/android/gms/internal/zzu;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzu;->zzbc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "hashCode"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzw;->zzon:Lcom/google/android/gms/internal/zzu;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzu;->zzbf()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "isMraid"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzw;->zzon:Lcom/google/android/gms/internal/zzu;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzu;->zzbg()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object v0
.end method

.method protected zzbp()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzw;->zzbo()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "doneReasonCode"

    const-string v2, "u"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method protected zzd(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v3, 0x2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzh;->zzaS()Lcom/google/android/gms/internal/zzfm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfm;->zzk(Landroid/view/View;)Z

    move-result v1

    new-array v2, v3, [I

    new-array v0, v3, [I

    :try_start_0
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x0

    aget v4, v2, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x1

    aget v2, v2, v4

    iput v2, v3, Landroid/graphics/Rect;->top:I

    iget v2, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v3, Landroid/graphics/Rect;->right:I

    iget v2, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v3, Landroid/graphics/Rect;->bottom:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/internal/zzw;->zzor:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    iput v4, v2, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/google/android/gms/internal/zzw;->zzor:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v5

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v6}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v7

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v8}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzw;->zzbo()Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "windowVisibility"

    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "isStopped"

    iget-boolean v12, p0, Lcom/google/android/gms/internal/zzw;->zzow:Z

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "isPaused"

    iget-boolean v12, p0, Lcom/google/android/gms/internal/zzw;->zznE:Z

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "isAttachedToWindow"

    invoke-virtual {v10, v11, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v10, "viewBox"

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    const-string v12, "top"

    iget v13, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v13, v0}, Lcom/google/android/gms/internal/zzw;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "bottom"

    iget v13, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v13, v0}, Lcom/google/android/gms/internal/zzw;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "left"

    iget v13, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v13, v0}, Lcom/google/android/gms/internal/zzw;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "right"

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/zzw;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v2

    invoke-virtual {v11, v12, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "adBox"

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    const-string v11, "top"

    iget v12, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v12, v0}, Lcom/google/android/gms/internal/zzw;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "bottom"

    iget v12, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v12, v0}, Lcom/google/android/gms/internal/zzw;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "left"

    iget v12, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v12, v0}, Lcom/google/android/gms/internal/zzw;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "right"

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v3, v0}, Lcom/google/android/gms/internal/zzw;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v3

    invoke-virtual {v10, v11, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "globalVisibleBox"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v10, "top"

    iget v11, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v11, v0}, Lcom/google/android/gms/internal/zzw;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v11

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v10, "bottom"

    iget v11, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v11, v0}, Lcom/google/android/gms/internal/zzw;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v11

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v10, "left"

    iget v11, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v11, v0}, Lcom/google/android/gms/internal/zzw;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v11

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v10, "right"

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v4, v0}, Lcom/google/android/gms/internal/zzw;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v4

    invoke-virtual {v3, v10, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "globalVisibleBoxVisible"

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "localVisibleBox"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "top"

    iget v5, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v5, v0}, Lcom/google/android/gms/internal/zzw;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "bottom"

    iget v5, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v5, v0}, Lcom/google/android/gms/internal/zzw;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "left"

    iget v5, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v5, v0}, Lcom/google/android/gms/internal/zzw;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "right"

    iget v5, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v5, v0}, Lcom/google/android/gms/internal/zzw;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "localVisibleBoxVisible"

    invoke-virtual {v1, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "hitBox"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "top"

    iget v5, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v5, v0}, Lcom/google/android/gms/internal/zzw;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "bottom"

    iget v5, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v5, v0}, Lcom/google/android/gms/internal/zzw;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "left"

    iget v5, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v5, v0}, Lcom/google/android/gms/internal/zzw;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "right"

    iget v5, v8, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v5, v0}, Lcom/google/android/gms/internal/zzw;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "screenDensity"

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "isVisible"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzw;->zze(Landroid/view/View;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object v9

    :catch_0
    move-exception v0

    const-string v3, "Failure getting view location."

    invoke-static {v3, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method protected zze(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzw;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzw;->zzot:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzh;->zzaQ()Lcom/google/android/gms/internal/zzfl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfl;->zzeZ()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected zzh(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzw;->zzoA:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzt;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/zzt;->zza(Lcom/google/android/gms/internal/zzw;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected zzi(Z)V
    .locals 3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzw;->zzoe:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzw;->zzoq:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzw;->zzox:Z

    if-nez v0, :cond_1

    :cond_0
    monitor-exit v2

    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzw;->zznk:Lcom/google/android/gms/internal/zzfq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfq;->tryAcquire()Z

    move-result v0

    if-nez v0, :cond_2

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzw;->zzok:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfa;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzw;->zzom:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_3

    if-nez v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzw;->zzbj()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzw;->zzd(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzw;->zza(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzw;->zzbm()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzw;->zzbk()V

    monitor-exit v2

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_3
    const-string v1, "Active view update failed."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3
.end method
