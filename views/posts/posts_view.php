<div class="row">
    <div class="col-lg-8">
        <h1><?php echo $post['post_subject'];?></h1>
        <p class="lead">by <?php echo $post['name'];?></p>
        <hr>
        <p>Posted on <?php echo $post['post_created'];?></p>
        <p>Tags:
            <?php foreach($tags as $tag):?>
                <span class="badge badge-primary"><?php echo $tag['tag_name'];?></span>
            <?php endforeach;?>
        </p>
        <hr>
        <p><?php echo $post['post_text'];?></p>
    </div>
</div>
<div class="row">
    <?php foreach($comments as $comment):?>
        <div class="col-lg-8 comment-box">
          <span class="commenter-pic">
            <img src="https://img.favpng.com/17/7/13/computer-icons-icon-design-user-png-favpng-uXME5zjHwHTJNs2Kzf5LvgFDR.jpg" class="img-fluid" max-height="80px" max-width="auto">
          </span>
            <span class="commenter-name">
            <p>ANONÜÜMNE</p> <span class="comment-time"><?php echo $comment['date_time'];?></span>
          </span>
            <p class="comment-txt more"><?php echo $comment['comment'];?></p>
        </div>

    <?php endforeach;?>
</div>
