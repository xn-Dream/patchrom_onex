.class Lcom/htc/fragment/widget/BinAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "BinAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fragment/widget/BinAdapter$1;,
        Lcom/htc/fragment/widget/BinAdapter$RecycleBin;,
        Lcom/htc/fragment/widget/BinAdapter$FastBitmapDrawable;,
        Lcom/htc/fragment/widget/BinAdapter$CoverViewHolder;,
        Lcom/htc/fragment/widget/BinAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGV:Z = false

.field static final OWNER_POOL:I = 0x2

.field static final OWNER_WIDGET:I = 0x1


# instance fields
.field eresources:Landroid/content/res/Resources;

.field mAlternativeNameIndex:I

.field mCountTextIndex:I

.field mCountTextVisibleIndex:I

.field mIconIndex:I

.field mIdIndex:I

.field private mInflater:Landroid/view/LayoutInflater;

.field mIntentIndex:I

.field mIsHostIndex:I

.field mIsRemovableIndex:I

.field private mModel:Lcom/htc/fragment/widget/CarouselModel;

.field mOverlayIndex:I

.field private mOwner:I

.field mPackageIndex:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mQueryHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;",
            ">;"
        }
    .end annotation
.end field

.field final mRecycler:Lcom/htc/fragment/widget/BinAdapter$RecycleBin;

.field mSelectedIconIndex:I

.field private mState:I

.field private mTabID:Ljava/lang/String;

.field private mTabPrefix:Ljava/lang/String;

.field mTaskNameIndex:I

.field mTaskOrderIndex:I

.field mTaskTagIndex:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/database/Cursor;[Ljava/lang/String;[ILcom/htc/fragment/content/NotifyingAsyncQueryHandler;)V
    .locals 10
    .parameter "context"
    .parameter "layout"
    .parameter "uri"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"
    .parameter "queryHandler"

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 46
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/htc/fragment/widget/BinAdapter;->mState:I

    .line 51
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/fragment/widget/BinAdapter;->mOwner:I

    .line 53
    new-instance v0, Lcom/htc/fragment/widget/BinAdapter$RecycleBin;

    invoke-direct {v0, p0}, Lcom/htc/fragment/widget/BinAdapter$RecycleBin;-><init>(Lcom/htc/fragment/widget/BinAdapter;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/BinAdapter;->mRecycler:Lcom/htc/fragment/widget/BinAdapter$RecycleBin;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fragment/widget/BinAdapter;->eresources:Landroid/content/res/Resources;

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/BinAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 103
    const/4 v8, 0x0

    const/4 v9, 0x2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v9}, Lcom/htc/fragment/widget/BinAdapter;->inital(Landroid/content/Context;ILandroid/net/Uri;Landroid/database/Cursor;[Ljava/lang/String;[ILcom/htc/fragment/content/NotifyingAsyncQueryHandler;Lcom/htc/fragment/widget/CarouselModel;I)V

    .line 104
    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/database/Cursor;[Ljava/lang/String;[ILcom/htc/fragment/content/NotifyingAsyncQueryHandler;Lcom/htc/fragment/widget/CarouselModel;I)V
    .locals 6
    .parameter "context"
    .parameter "layout"
    .parameter "uri"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"
    .parameter "queryHandler"
    .parameter "model"
    .parameter "owner"

    .prologue
    .line 108
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 46
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/htc/fragment/widget/BinAdapter;->mState:I

    .line 51
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/fragment/widget/BinAdapter;->mOwner:I

    .line 53
    new-instance v0, Lcom/htc/fragment/widget/BinAdapter$RecycleBin;

    invoke-direct {v0, p0}, Lcom/htc/fragment/widget/BinAdapter$RecycleBin;-><init>(Lcom/htc/fragment/widget/BinAdapter;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/BinAdapter;->mRecycler:Lcom/htc/fragment/widget/BinAdapter$RecycleBin;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fragment/widget/BinAdapter;->eresources:Landroid/content/res/Resources;

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/BinAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 110
    invoke-virtual/range {p0 .. p9}, Lcom/htc/fragment/widget/BinAdapter;->inital(Landroid/content/Context;ILandroid/net/Uri;Landroid/database/Cursor;[Ljava/lang/String;[ILcom/htc/fragment/content/NotifyingAsyncQueryHandler;Lcom/htc/fragment/widget/CarouselModel;I)V

    .line 111
    return-void
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 138
    if-eqz p1, :cond_0

    .line 139
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/BinAdapter;->mIdIndex:I

    .line 140
    const-string v0, "task_tag"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/BinAdapter;->mTaskTagIndex:I

    .line 141
    const-string v0, "task_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/BinAdapter;->mTaskNameIndex:I

    .line 142
    const-string v0, "intent"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/BinAdapter;->mIntentIndex:I

    .line 143
    const-string v0, "res_package"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/BinAdapter;->mPackageIndex:I

    .line 144
    const-string v0, "icon_resource"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/BinAdapter;->mIconIndex:I

    .line 145
    const-string v0, "selected_icon_resource"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/BinAdapter;->mSelectedIconIndex:I

    .line 146
    const-string v0, "overlay_resource"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/BinAdapter;->mOverlayIndex:I

    .line 147
    const-string v0, "task_order"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/BinAdapter;->mTaskOrderIndex:I

    .line 148
    const-string v0, "is_host"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/BinAdapter;->mIsHostIndex:I

    .line 149
    const-string v0, "is_removable"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/BinAdapter;->mIsRemovableIndex:I

    .line 150
    const-string v0, "count_text"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/BinAdapter;->mCountTextIndex:I

    .line 151
    const-string v0, "count_text_visible"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/BinAdapter;->mCountTextVisibleIndex:I

    .line 152
    const-string v0, "alternative_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/BinAdapter;->mAlternativeNameIndex:I

    .line 154
    :cond_0
    return-void
.end method


# virtual methods
.method public bindCoverView(ILandroid/view/View;)V
    .locals 23
    .parameter "position"
    .parameter "convertView"

    .prologue
    .line 316
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/fragment/widget/BinAdapter;->mDataValid:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 317
    new-instance v20, Ljava/lang/IllegalStateException;

    const-string v21, "this should only be called when the cursor is valid"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 320
    :cond_0
    if-nez p2, :cond_1

    .line 321
    new-instance v20, Ljava/lang/IllegalStateException;

    const-string v21, "convertView couldn\'t be null "

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 323
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/fragment/widget/BinAdapter$CoverViewHolder;

    .line 324
    .local v6, cvh:Lcom/htc/fragment/widget/BinAdapter$CoverViewHolder;
    iget-object v8, v6, Lcom/htc/fragment/widget/BinAdapter$CoverViewHolder;->infoImage:Landroid/widget/ImageView;

    .line 325
    .local v8, infoImage:Landroid/widget/ImageView;
    iget-object v9, v6, Lcom/htc/fragment/widget/BinAdapter$CoverViewHolder;->infoText:Landroid/widget/TextView;

    .line 326
    .local v9, infoText:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/BinAdapter;->mRecycler:Lcom/htc/fragment/widget/BinAdapter$RecycleBin;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/BinAdapter$RecycleBin;->getOverlayImg(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 327
    .local v7, img:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/BinAdapter;->mRecycler:Lcom/htc/fragment/widget/BinAdapter$RecycleBin;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/BinAdapter$RecycleBin;->getOverlayText(I)Ljava/lang/String;

    move-result-object v12

    .line 328
    .local v12, name:Ljava/lang/String;
    if-eqz v7, :cond_2

    if-eqz v12, :cond_2

    .line 329
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 330
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    :goto_0
    return-void

    .line 333
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/BinAdapter;->mCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v20

    if-nez v20, :cond_3

    .line 334
    new-instance v20, Ljava/lang/IllegalStateException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "couldn\'t move cursor to position "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 337
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/fragment/widget/BinAdapter;->mCursor:Landroid/database/Cursor;

    .line 338
    .local v5, c:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/BinAdapter;->mAlternativeNameIndex:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 339
    .local v3, alternativeName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/BinAdapter;->mOverlayIndex:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 340
    .local v13, overlay:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/BinAdapter;->mTaskNameIndex:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 341
    .local v19, taskName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/fragment/widget/BinAdapter;->mPackageIndex:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 343
    .local v16, packageName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 344
    .local v10, iresources:Landroid/content/res/Resources;
    const/16 v17, 0x0

    .line 345
    .local v17, tabNmae:Ljava/lang/String;
    const/4 v15, 0x0

    .line 347
    .local v15, overlayImg:Landroid/graphics/drawable/Drawable;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/BinAdapter;->eresources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    if-nez v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/BinAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .line 352
    :goto_1
    if-eqz v10, :cond_5

    .line 353
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v10, v13, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 354
    .local v14, overlayIconId:I
    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v11

    .line 355
    .local v11, is:Ljava/io/InputStream;
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v11, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 357
    .local v4, bm:Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 360
    :goto_2
    if-eqz v4, :cond_4

    .line 361
    sget v20, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 362
    new-instance v15, Lcom/htc/fragment/widget/BinAdapter$FastBitmapDrawable;

    .end local v15           #overlayImg:Landroid/graphics/drawable/Drawable;
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-direct {v15, v4, v0}, Lcom/htc/fragment/widget/BinAdapter$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Lcom/htc/fragment/widget/BinAdapter$1;)V

    .line 365
    .restart local v15       #overlayImg:Landroid/graphics/drawable/Drawable;
    :cond_4
    move-object/from16 v17, v3

    .line 366
    if-nez v3, :cond_5

    .line 367
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v10, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 368
    .local v18, tadNameId:I
    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 372
    .end local v4           #bm:Landroid/graphics/Bitmap;
    .end local v11           #is:Ljava/io/InputStream;
    .end local v14           #overlayIconId:I
    .end local v18           #tadNameId:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/BinAdapter;->mRecycler:Lcom/htc/fragment/widget/BinAdapter$RecycleBin;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/htc/fragment/widget/BinAdapter$RecycleBin;->put(ILandroid/graphics/drawable/Drawable;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/BinAdapter;->mRecycler:Lcom/htc/fragment/widget/BinAdapter$RecycleBin;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/htc/fragment/widget/BinAdapter$RecycleBin;->put(ILjava/lang/String;)V

    .line 374
    invoke-virtual {v8, v15}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 375
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 347
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/fragment/widget/BinAdapter;->eresources:Landroid/content/res/Resources;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 358
    .restart local v4       #bm:Landroid/graphics/Bitmap;
    .restart local v11       #is:Ljava/io/InputStream;
    .restart local v14       #overlayIconId:I
    :catch_0
    move-exception v20

    goto :goto_2

    .line 349
    .end local v4           #bm:Landroid/graphics/Bitmap;
    .end local v11           #is:Ljava/io/InputStream;
    .end local v14           #overlayIconId:I
    :catch_1
    move-exception v20

    goto :goto_1
.end method

.method public bindSelectedView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 411
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/fragment/widget/BinAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 412
    return-void
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/fragment/widget/BinAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 135
    return-void
.end method

.method bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 33
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "selected"

    .prologue
    .line 157
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/fragment/widget/BinAdapter;->mIdIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 158
    .local v15, id:J
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/fragment/widget/BinAdapter;->mTaskTagIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 159
    .local v31, taskTag:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/fragment/widget/BinAdapter;->mTabPrefix:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/fragment/widget/BinAdapter;->mTabPrefix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v31

    .line 162
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/fragment/widget/BinAdapter;->mTaskNameIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 163
    .local v29, taskName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/fragment/widget/BinAdapter;->mIntentIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 164
    .local v18, intentDescription:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/fragment/widget/BinAdapter;->mPackageIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 165
    .local v26, packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/fragment/widget/BinAdapter;->mIconIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 166
    .local v14, icon:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/fragment/widget/BinAdapter;->mSelectedIconIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 167
    .local v28, selectedIcon:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/fragment/widget/BinAdapter;->mOverlayIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 168
    .local v24, overlay:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/fragment/widget/BinAdapter;->mTaskOrderIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 169
    .local v30, taskOrder:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/fragment/widget/BinAdapter;->mIsHostIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 170
    .local v21, isHost:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/fragment/widget/BinAdapter;->mIsRemovableIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 171
    .local v22, isRemovable:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/fragment/widget/BinAdapter;->mCountTextIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 172
    .local v11, countText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/fragment/widget/BinAdapter;->mCountTextVisibleIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 174
    .local v20, isCountTextVisible:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/fragment/widget/BinAdapter;->mAlternativeNameIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 176
    .local v8, alternativeName:Ljava/lang/String;
    new-instance v17, Lcom/htc/fragment/widget/TaskInfo;

    invoke-direct/range {v17 .. v17}, Lcom/htc/fragment/widget/TaskInfo;-><init>()V

    .line 177
    .local v17, info:Lcom/htc/fragment/widget/TaskInfo;
    move-object/from16 v0, v17

    iput-wide v15, v0, Lcom/htc/fragment/widget/TaskInfo;->_id:J

    .line 178
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/fragment/widget/BinAdapter;->mTabID:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/htc/fragment/widget/TaskInfo;->gId:Ljava/lang/String;

    .line 179
    move-object/from16 v0, v31

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/htc/fragment/widget/TaskInfo;->taskTag:Ljava/lang/String;

    .line 180
    move-object/from16 v0, v29

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/htc/fragment/widget/TaskInfo;->taskName:Ljava/lang/String;

    .line 181
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/htc/fragment/widget/TaskInfo;->intentUri:Ljava/lang/String;

    .line 182
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/htc/fragment/widget/TaskInfo;->resPackage:Ljava/lang/String;

    .line 183
    move-object/from16 v0, v17

    iput-object v14, v0, Lcom/htc/fragment/widget/TaskInfo;->icon:Ljava/lang/String;

    .line 184
    move-object/from16 v0, v28

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/htc/fragment/widget/TaskInfo;->selectedIcon:Ljava/lang/String;

    .line 185
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/htc/fragment/widget/TaskInfo;->overlay:Ljava/lang/String;

    .line 186
    move/from16 v0, v30

    move-object/from16 v1, v17

    iput v0, v1, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    .line 187
    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Lcom/htc/fragment/widget/TaskInfo;->isHost:I

    .line 188
    move/from16 v0, v22

    move-object/from16 v1, v17

    iput v0, v1, Lcom/htc/fragment/widget/TaskInfo;->isRemovable:I

    .line 189
    move-object/from16 v0, v17

    iput-object v11, v0, Lcom/htc/fragment/widget/TaskInfo;->countText:Ljava/lang/String;

    .line 190
    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Lcom/htc/fragment/widget/TaskInfo;->isCountTextVisible:I

    .line 192
    move-object/from16 v0, v17

    iput-object v8, v0, Lcom/htc/fragment/widget/TaskInfo;->alternativeName:Ljava/lang/String;

    .line 194
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/fragment/widget/BinAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    .line 195
    .local v25, packageManager:Landroid/content/pm/PackageManager;
    const/16 v19, 0x0

    .line 198
    .local v19, iresources:Landroid/content/res/Resources;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/fragment/widget/BinAdapter;->eresources:Landroid/content/res/Resources;

    if-nez v3, :cond_4

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/htc/fragment/widget/TaskInfo;->resPackage:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    :goto_0
    move-object/from16 v13, p1

    .line 209
    check-cast v13, Landroid/widget/FrameLayout;

    .line 214
    .local v13, frame:Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/fragment/widget/BinAdapter;->mOwner:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_9

    .line 216
    const v3, 0x2020061

    invoke-virtual {v13, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Lcom/htc/fragment/widget/CarouselTextView;

    .line 218
    .local v32, textView:Lcom/htc/fragment/widget/CarouselTextView;
    move-object/from16 v0, v17

    iget v3, v0, Lcom/htc/fragment/widget/TaskInfo;->isHost:I

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/fragment/widget/BinAdapter;->mState:I

    const/16 v4, 0x3ea

    if-eq v3, v4, :cond_1

    if-eqz p4, :cond_5

    .line 219
    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v27

    .line 224
    .local v27, resourceID:I
    :goto_1
    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lcom/htc/fragment/widget/CarouselTextView;->enableForceSingleLine(Z)V

    .line 225
    const v3, 0x203005c

    move-object/from16 v0, v32

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3}, Lcom/htc/fragment/widget/CarouselTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 227
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/fragment/widget/BinAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2060050

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lcom/htc/fragment/widget/CarouselTextView;->setTextColor(I)V

    .line 230
    const/4 v3, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/htc/fragment/widget/CarouselTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 234
    if-nez v8, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .end local v8           #alternativeName:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Lcom/htc/fragment/widget/CarouselTextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 237
    move-object/from16 v0, v17

    iget v3, v0, Lcom/htc/fragment/widget/TaskInfo;->isHost:I

    if-nez v3, :cond_6

    .line 238
    const v3, 0x2020062

    invoke-virtual {v13, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 285
    :cond_3
    :goto_2
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 287
    .end local v13           #frame:Landroid/widget/FrameLayout;
    .end local v27           #resourceID:I
    .end local v32           #textView:Lcom/htc/fragment/widget/CarouselTextView;
    :goto_3
    return-void

    .line 198
    .restart local v8       #alternativeName:Ljava/lang/String;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/widget/BinAdapter;->eresources:Landroid/content/res/Resources;

    move-object/from16 v19, v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 200
    :catch_0
    move-exception v12

    .line 202
    .local v12, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/BinAdapter;->getHandler()Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    move-result-object v2

    .line 203
    .local v2, handle:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/fragment/widget/BinAdapter;->mUri:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "task_tag = \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BinAdapter::bindView(): We can not find resource, so remove "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Lcom/htc/fragment/widget/TaskInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/fragment/widget/CarouselLog;->d(Ljava/lang/String;)V

    goto :goto_3

    .line 221
    .end local v2           #handle:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;
    .end local v12           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v13       #frame:Landroid/widget/FrameLayout;
    .restart local v32       #textView:Lcom/htc/fragment/widget/CarouselTextView;
    :cond_5
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v27

    .restart local v27       #resourceID:I
    goto/16 :goto_1

    .line 242
    .end local v8           #alternativeName:Ljava/lang/String;
    :cond_6
    const v3, 0x2020062

    invoke-virtual {v13, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 244
    .local v10, count:Landroid/widget/TextView;
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    if-eqz v20, :cond_7

    if-eqz v11, :cond_7

    const-string v3, "0"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    const/4 v3, 0x4

    :goto_4
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/fragment/widget/BinAdapter;->mState:I

    const/16 v4, 0x3ea

    if-ne v3, v4, :cond_3

    .line 248
    const v3, 0x2020062

    invoke-virtual {v13, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 245
    :cond_8
    const/4 v3, 0x0

    goto :goto_4

    .line 253
    .end local v10           #count:Landroid/widget/TextView;
    .end local v27           #resourceID:I
    .end local v32           #textView:Lcom/htc/fragment/widget/CarouselTextView;
    .restart local v8       #alternativeName:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 254
    const v3, 0x2020062

    invoke-virtual {v13, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 256
    const v3, 0x2020061

    invoke-virtual {v13, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Lcom/htc/fragment/widget/CarouselTextView;

    .line 258
    .restart local v32       #textView:Lcom/htc/fragment/widget/CarouselTextView;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v27

    .line 261
    .restart local v27       #resourceID:I
    const/4 v3, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lcom/htc/fragment/widget/CarouselTextView;->enableForceSingleLine(Z)V

    .line 262
    const v3, 0x203005c

    move-object/from16 v0, v32

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3}, Lcom/htc/fragment/widget/CarouselTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 263
    invoke-static/range {p2 .. p2}, Lcom/htc/fragment/widget/CarouselSkinUtil;->getDarkSecondaryFontColor(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Lcom/htc/fragment/widget/CarouselTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 265
    if-nez v8, :cond_a

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .end local v8           #alternativeName:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Lcom/htc/fragment/widget/CarouselTextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    const/4 v3, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/htc/fragment/widget/CarouselTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 268
    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    .line 271
    .local v23, lparams:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/fragment/widget/BinAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x208019e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 274
    .local v9, backgroundDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v23, :cond_b

    .line 276
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    move-object/from16 v0, v23

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 277
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    move-object/from16 v0, v23

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 278
    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    :cond_b
    invoke-virtual {v13, v9}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 282
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v13, v3, v4, v5, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto/16 :goto_2
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 457
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 458
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/BinAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 459
    iget-object v0, p0, Lcom/htc/fragment/widget/BinAdapter;->mRecycler:Lcom/htc/fragment/widget/BinAdapter$RecycleBin;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinAdapter$RecycleBin;->clear()V

    .line 461
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/htc/fragment/widget/BinAdapter;->mOwner:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 462
    iget-object v0, p0, Lcom/htc/fragment/widget/BinAdapter;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/CarouselModel;->changeCursor(Landroid/database/Cursor;)V

    .line 464
    :cond_0
    return-void
.end method

.method public getHandler()Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/htc/fragment/widget/BinAdapter;->mQueryHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    return-object v0
.end method

.method public getSeletedView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 295
    iget-boolean v1, p0, Lcom/htc/fragment/widget/BinAdapter;->mDataValid:Z

    if-nez v1, :cond_0

    .line 296
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "this should only be called when the cursor is valid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 298
    :cond_0
    iget-object v1, p0, Lcom/htc/fragment/widget/BinAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 299
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t move cursor to position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 302
    :cond_1
    if-nez p2, :cond_2

    .line 303
    iget-object v1, p0, Lcom/htc/fragment/widget/BinAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/fragment/widget/BinAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v2, p3}, Lcom/htc/fragment/widget/BinAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 307
    .local v0, v:Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/htc/fragment/widget/BinAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/fragment/widget/BinAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/fragment/widget/BinAdapter;->bindSelectedView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 308
    return-object v0

    .line 305
    .end local v0           #v:Landroid/view/View;
    :cond_2
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public getTaskTag(I)Ljava/lang/String;
    .locals 5
    .parameter "position"

    .prologue
    .line 385
    iget-boolean v2, p0, Lcom/htc/fragment/widget/BinAdapter;->mDataValid:Z

    if-nez v2, :cond_0

    .line 386
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "this should only be called when the cursor is valid"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 388
    :cond_0
    iget-object v2, p0, Lcom/htc/fragment/widget/BinAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 389
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t move cursor to position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/BinAdapter;->mCursor:Landroid/database/Cursor;

    .line 393
    .local v0, c:Landroid/database/Cursor;
    iget v2, p0, Lcom/htc/fragment/widget/BinAdapter;->mTaskTagIndex:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, taskTag:Ljava/lang/String;
    return-object v1
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/htc/fragment/widget/BinAdapter;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method inital(Landroid/content/Context;ILandroid/net/Uri;Landroid/database/Cursor;[Ljava/lang/String;[ILcom/htc/fragment/content/NotifyingAsyncQueryHandler;Lcom/htc/fragment/widget/CarouselModel;I)V
    .locals 2
    .parameter "context"
    .parameter "layout"
    .parameter "uri"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"
    .parameter "queryHandler"
    .parameter "model"
    .parameter "owner"

    .prologue
    .line 89
    iput-object p3, p0, Lcom/htc/fragment/widget/BinAdapter;->mUri:Landroid/net/Uri;

    .line 90
    const-string v0, "gId"

    invoke-virtual {p3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/BinAdapter;->mTabID:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/fragment/widget/BinAdapter;->mTabID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/BinAdapter;->mTabPrefix:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/fragment/widget/BinAdapter;->mQueryHandler:Ljava/lang/ref/WeakReference;

    .line 93
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/htc/fragment/widget/BinAdapter;->mState:I

    .line 94
    iput-object p8, p0, Lcom/htc/fragment/widget/BinAdapter;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    .line 95
    iput p9, p0, Lcom/htc/fragment/widget/BinAdapter;->mOwner:I

    .line 96
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/fragment/widget/BinAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 97
    return-void
.end method

.method public isDataValid()Z
    .locals 1

    .prologue
    .line 403
    iget-boolean v0, p0, Lcom/htc/fragment/widget/BinAdapter;->mDataValid:Z

    return v0
.end method

.method newCoverView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "layout"
    .parameter "parent"

    .prologue
    .line 120
    iget-object v2, p0, Lcom/htc/fragment/widget/BinAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 121
    .local v1, v:Landroid/view/View;
    new-instance v0, Lcom/htc/fragment/widget/BinAdapter$CoverViewHolder;

    invoke-direct {v0}, Lcom/htc/fragment/widget/BinAdapter$CoverViewHolder;-><init>()V

    .line 122
    .local v0, cvh:Lcom/htc/fragment/widget/BinAdapter$CoverViewHolder;
    const v2, 0x202006c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/htc/fragment/widget/BinAdapter$CoverViewHolder;->infoImage:Landroid/widget/ImageView;

    .line 123
    const v2, 0x202006d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/htc/fragment/widget/BinAdapter$CoverViewHolder;->infoText:Landroid/widget/TextView;

    .line 124
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 125
    return-object v1
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/htc/fragment/widget/BinAdapter;->mRecycler:Lcom/htc/fragment/widget/BinAdapter$RecycleBin;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinAdapter$RecycleBin;->clear()V

    .line 436
    iget-object v0, p0, Lcom/htc/fragment/widget/BinAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/fragment/widget/BinAdapter;->mOwner:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 437
    iget-object v0, p0, Lcom/htc/fragment/widget/BinAdapter;->mModel:Lcom/htc/fragment/widget/CarouselModel;

    iget-object v1, p0, Lcom/htc/fragment/widget/BinAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselModel;->notifyDataSetChanged(Landroid/database/Cursor;)V

    .line 440
    :cond_0
    invoke-super {p0}, Landroid/widget/SimpleCursorAdapter;->notifyDataSetChanged()V

    .line 441
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 448
    invoke-super {p0}, Landroid/widget/SimpleCursorAdapter;->notifyDataSetInvalidated()V

    .line 449
    iget-object v0, p0, Lcom/htc/fragment/widget/BinAdapter;->mRecycler:Lcom/htc/fragment/widget/BinAdapter$RecycleBin;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/BinAdapter$RecycleBin;->clear()V

    .line 450
    return-void
.end method

.method setStateMode(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 115
    iput p1, p0, Lcom/htc/fragment/widget/BinAdapter;->mState:I

    .line 116
    invoke-virtual {p0}, Lcom/htc/fragment/widget/BinAdapter;->notifyDataSetChanged()V

    .line 117
    return-void
.end method
