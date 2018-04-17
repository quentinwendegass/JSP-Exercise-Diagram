package at.htlklu.balkendiagram;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.awt.font.FontRenderContext;
import java.awt.font.GlyphVector;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/DiagramServlet")
public class DiagramServlet extends HttpServlet {

    private int balkenhoehe = 50;

    public DiagramServlet(){
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("project"));

        DatabaseManager manager = new DatabaseManager();
        manager.connect("projekte");

        response.setContentType("image/gif");
        ImageIO.write(getBalkendiagram(manager.getArbeitspaketeByProjectId(id)), "gif", response.getOutputStream());
    }

    private BufferedImage getBalkendiagram(List<Arbeitspaket> arbeitspakete){
        double maxStd = 0;
        for(Arbeitspaket ap : arbeitspakete){
            if(ap.getStd() > maxStd) maxStd = ap.getStd();
        }

        BufferedImage img = new BufferedImage(2000, arbeitspakete.size() * balkenhoehe * 2 + 1, BufferedImage.TYPE_INT_ARGB);

        Graphics2D g = (Graphics2D) img.getGraphics();
        g.setFont(new Font("Arial", Font.PLAIN, balkenhoehe));
        int y = 0;
        for(Arbeitspaket ap : arbeitspakete){
            g.setColor(Color.RED);
            g.fillRect(0,y,(int) ((double)ap.getStd() / maxStd * 2000),balkenhoehe);
            g.setColor(Color.BLACK);
            String str = ap.getCode() + ": " + ap.getStd() + "h";
            g.drawString(str,0, y + balkenhoehe - (balkenhoehe - getStringHeight(g, str))/2);
            y+=balkenhoehe * 2;
        }

        return img;
    }

    private int getStringHeight(Graphics2D g2, String str) {
        FontRenderContext frc = g2.getFontRenderContext();
        GlyphVector gv = g2.getFont().createGlyphVector(frc, str);
        return gv.getPixelBounds(null, 0, 0).height;
    }
}
