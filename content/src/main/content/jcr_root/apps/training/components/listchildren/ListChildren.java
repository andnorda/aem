package apps.training.components.listchildren;

import com.adobe.cq.sightly.WCMUse;
import com.day.cq.wcm.api.Page;
import com.day.cq.wcm.api.PageFilter;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ListChildren extends WCMUse {
    private List<Page> items = new ArrayList<Page>();

    public void activate() throws Exception {
        final String path = getProperties().get("pagepath", getCurrentPage().getAbsoluteParent(2).getPath());
        final Page rootPage = getPageManager().getPage(path);

        if (rootPage != null) {
            Iterator<Page> childPages = rootPage.listChildren(new
                    PageFilter(getRequest()));
            while (childPages.hasNext()) {
                items.add(childPages.next());
            }
        }
    }

    public List<Page> getItems() {
        return items;
    }
}