/**
 * Created by brooks on 12/30/2020.
 */

public with sharing abstract class Music {
    protected String title;
    protected String album;

    public Music(String title, String album) {
        this.title = title;
        this.album = album;
    }

    public abstract String getMusicDetail();

    public abstract void accept(IMusicVisitor visitor);

    public class Rock extends Music {

        public Rock(String title, String album) {
            super(title, album);
        }


        public override String getMusicDetail() {
            return 'Rock Music Title ' + this.title + ' Album: ' + this.album;
        }


        public override void accept(IMusicVisitor visitor) {
            visitor.visit(this);
        }
    }

    public virtual class Pop extends Music {
        protected String title;
        protected String album;

        public Pop(String title, String album) {
            super(title, album);
            this.album = album;
            this.title = title;
        }


        public virtual override String getMusicDetail() {
            return 'Pop Music, Title : ' + this.title + 'Album: ' + this.album;
        }


        public virtual override void accept(IMusicVisitor visitor) {
            visitor.visit(this);
        }
    }

    public class Electronic extends Music {

        public Electronic(String title, String album) {
            super(title, album);
        }


        public override String getMusicDetail() {
            return 'Electronic Music, Title: ' + this.title + 'Album: ' + this.album;
        }


        public override void accept(IMusicVisitor visitor) {
            visitor.visit(this);
        }
    }

    public class PopRock extends Pop {


        public PopRock(String title, String album) {
            super(title, album);
        }

        public override String getMusicDetail(){
            return 'Pop Rock Music : Title - '+title+' ,album - '+album;
        }


        public override void accept(IMusicVisitor visitor) {
            visitor.visit(this);
        }
    }

}