package Vista;

import Controladora.Control;
import Modelo.Validaciones;
import java.awt.Color;
import java.awt.Image;
import java.awt.Toolkit;
import javax.swing.JPanel;

/**
 * [VentanaLogin] Clase de interfaz GUI que presenta una ventana para loguearse en el sistema
 * @since 24/11/2017
 * @version 2.0
 * @author Julian Andres Castaño - 1625743
 */

public class VentanaLogin extends javax.swing.JFrame {
    
    //Declaracion de variables estaticas
    public static Image iconoVentana;
    
    //Declaracion de Variables de Clases
    private final Control controlador;
    private final Validaciones validacionTotal;
    private final VistaAdministrador VA;
    private final VistaEnfermera VE;   
    private final VistaMedico VM;
    
//=======================================================================================================    
    /**
     * Constructor de Clase VentanaLogin
     * @since VentanaLogin.java
     */
    
    public VentanaLogin() {
        
        initComponents();
        
        //Inicializacion de Variables
        controlador = new Control();
        validacionTotal = new Validaciones();
        VA = VistaAdministrador.getInstancia();
        VM = VistaMedico.getInstancia();
        VE = VistaEnfermera.getInstancia();
        iconoVentana = Toolkit.getDefaultToolkit().getImage(getClass().getResource("/Imagenes/Logos/iconoHospital.png"));
        
        //Implementacion de Ajustes
        ajustesGraficos();

    }  
//=======================================================================================================
    /**
     * Metodo para poner un color cuando el mouse este encima del panel
     * @param panel Panel que se pondra el color 
     */
    public void ponerColor(JPanel panel)
    {
        panel.setBackground(new Color(52, 120, 219));
    }
    
//=======================================================================================================
    /**
     * Metodo para poner un color cuando el mouse se quite del panel
     * @param panel Panel que se pondra el color 
     */
    public void repintarColor(JPanel panel)
    {
        panel.setBackground(new Color(52, 152, 219));
    }
    
//======================================================================================================= 
    /**
     * Metodo que realiza ajustes visuales a la interfaz
     */
    public final void ajustesGraficos()
    {        
        this.setLocationRelativeTo(null); 
        this.setIconImage(iconoVentana); 
    }
//=======================================================================================================    
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        evaluatorLine2D1 = new org.jdesktop.swing.animation.timing.evaluators.EvaluatorLine2D();
        jPanelLogin = new javax.swing.JPanel();
        jPasswordField = new javax.swing.JPasswordField();
        jTextFieldUsuario = new javax.swing.JTextField();
        jLabelimgUsuario = new javax.swing.JLabel();
        jLabelimgContrasena = new javax.swing.JLabel();
        jPanelIngresar = new javax.swing.JPanel();
        jLabelIngresar = new javax.swing.JLabel();
        jPanelTitulo = new javax.swing.JPanel();
        jLabelTitulo = new javax.swing.JLabel();
        jLabelCerrar = new javax.swing.JLabel();
        jLabelAcercaDe = new javax.swing.JLabel();
        jLabelFondo = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setMinimumSize(new java.awt.Dimension(900, 600));
        setUndecorated(true);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanelLogin.setBackground(new java.awt.Color(255, 255, 255,225));
        jPanelLogin.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPasswordField.setText("jPasswordField1");
        jPasswordField.setBorder(javax.swing.BorderFactory.createEtchedBorder(java.awt.Color.lightGray, null));
        jPasswordField.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jPasswordFieldFocusGained(evt);
            }
        });
        jPanelLogin.add(jPasswordField, new org.netbeans.lib.awtextra.AbsoluteConstraints(90, 120, 190, 30));

        jTextFieldUsuario.setFont(new java.awt.Font("Segoe UI", 0, 11)); // NOI18N
        jTextFieldUsuario.setBorder(javax.swing.BorderFactory.createEtchedBorder(java.awt.Color.lightGray, null));
        jTextFieldUsuario.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextFieldUsuarioActionPerformed(evt);
            }
        });
        jTextFieldUsuario.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                jTextFieldUsuarioKeyTyped(evt);
            }
        });
        jPanelLogin.add(jTextFieldUsuario, new org.netbeans.lib.awtextra.AbsoluteConstraints(90, 70, 192, 27));

        jLabelimgUsuario.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/Menu/Admin/usuario_48px.png"))); // NOI18N
        jPanelLogin.add(jLabelimgUsuario, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 60, -1, -1));

        jLabelimgContrasena.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/Login/contrasena_48px.png"))); // NOI18N
        jPanelLogin.add(jLabelimgContrasena, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 110, -1, -1));

        jPanelIngresar.setBackground(new java.awt.Color(52, 152, 219));

        jLabelIngresar.setFont(new java.awt.Font("Segoe UI Semilight", 1, 12)); // NOI18N
        jLabelIngresar.setForeground(new java.awt.Color(255, 255, 255));
        jLabelIngresar.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabelIngresar.setText("Iniciar Sesión");
        jLabelIngresar.setBorder(new javax.swing.border.SoftBevelBorder(javax.swing.border.BevelBorder.RAISED, java.awt.Color.lightGray, java.awt.Color.lightGray, java.awt.Color.lightGray, java.awt.Color.lightGray));
        jLabelIngresar.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jLabelIngresarMouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                jLabelIngresarMouseEntered(evt);
            }
            public void mouseExited(java.awt.event.MouseEvent evt) {
                jLabelIngresarMouseExited(evt);
            }
        });

        javax.swing.GroupLayout jPanelIngresarLayout = new javax.swing.GroupLayout(jPanelIngresar);
        jPanelIngresar.setLayout(jPanelIngresarLayout);
        jPanelIngresarLayout.setHorizontalGroup(
            jPanelIngresarLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jLabelIngresar, javax.swing.GroupLayout.DEFAULT_SIZE, 100, Short.MAX_VALUE)
        );
        jPanelIngresarLayout.setVerticalGroup(
            jPanelIngresarLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jLabelIngresar, javax.swing.GroupLayout.DEFAULT_SIZE, 30, Short.MAX_VALUE)
        );

        jPanelLogin.add(jPanelIngresar, new org.netbeans.lib.awtextra.AbsoluteConstraints(180, 190, -1, 30));

        getContentPane().add(jPanelLogin, new org.netbeans.lib.awtextra.AbsoluteConstraints(280, 230, 340, 260));

        jPanelTitulo.setBackground(new java.awt.Color(51, 152, 219,155));

        jLabelTitulo.setFont(new java.awt.Font("Segoe UI Light", 0, 48)); // NOI18N
        jLabelTitulo.setForeground(new java.awt.Color(255, 255, 255));
        jLabelTitulo.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabelTitulo.setText("        Sistema de Gestión Hospilaria");

        javax.swing.GroupLayout jPanelTituloLayout = new javax.swing.GroupLayout(jPanelTitulo);
        jPanelTitulo.setLayout(jPanelTituloLayout);
        jPanelTituloLayout.setHorizontalGroup(
            jPanelTituloLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanelTituloLayout.createSequentialGroup()
                .addComponent(jLabelTitulo, javax.swing.GroupLayout.DEFAULT_SIZE, 890, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanelTituloLayout.setVerticalGroup(
            jPanelTituloLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanelTituloLayout.createSequentialGroup()
                .addGap(20, 20, 20)
                .addComponent(jLabelTitulo)
                .addContainerGap(16, Short.MAX_VALUE))
        );

        getContentPane().add(jPanelTitulo, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 40, 900, 100));

        jLabelCerrar.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabelCerrar.setForeground(new java.awt.Color(255, 255, 255));
        jLabelCerrar.setText("X");
        jLabelCerrar.setToolTipText("Cerrar el programa");
        jLabelCerrar.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jLabelCerrarMouseClicked(evt);
            }
        });
        getContentPane().add(jLabelCerrar, new org.netbeans.lib.awtextra.AbsoluteConstraints(870, 0, 20, -1));

        jLabelAcercaDe.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabelAcercaDe.setForeground(new java.awt.Color(255, 255, 255));
        jLabelAcercaDe.setText("?");
        jLabelAcercaDe.setToolTipText("Acerca de");
        jLabelAcercaDe.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jLabelAcercaDeMouseClicked(evt);
            }
        });
        getContentPane().add(jLabelAcercaDe, new org.netbeans.lib.awtextra.AbsoluteConstraints(850, 0, 20, -1));

        jLabelFondo.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/Login/wall_login.jpg"))); // NOI18N
        getContentPane().add(jLabelFondo, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, -1, -1));

        setSize(new java.awt.Dimension(892, 573));
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void jPasswordFieldFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jPasswordFieldFocusGained
        jPasswordField.setText("");
    }//GEN-LAST:event_jPasswordFieldFocusGained

    private void jLabelIngresarMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jLabelIngresarMouseClicked

        String usuario = jTextFieldUsuario.getText();
        String password = new String(jPasswordField.getPassword());      
        String arregloValidar1[] = {usuario,password};
        int intentos = 0;
                
        if (!(validacionTotal.validarExcepciones(arregloValidar1, 2, 0, 0).equals("")))
        {
           new jWarning(this, true,validacionTotal.validarExcepciones(arregloValidar1, 2, 0, 0)).setVisible(true);                   
        }
         
        else 
        {                    
            if("".equals(controlador.loginUsuario(usuario,password)))
            {      
                new jWarning(this, true, "<html><center> El usuario y contraseña no corresponde a ningun usuario del sistema, recuerde que ambos corresponden a su numero de cedula </center></html>").setVisible(true);
                intentos++;         
            }

            else if("Administrador".equals(controlador.loginUsuario(usuario,password)))
            {           
                VA.setVisible(true);
                this.setVisible(false);
            }

          else if("Medico".equals(controlador.loginUsuario(usuario,password)))
            {           
                VM.setVisible(true);
                this.setVisible(false);
            }

          else if("Enfermera".equals(controlador.loginUsuario(usuario,password)))
            {           
                VE.setVisible(true);
                this.setVisible(false);
            }
            else if (intentos>2)
            {
                new jWarning(this, true, "<html><center> 3 Intentos fallidos, el programa se cerrara  </center></html>").setVisible(true);
                System.exit(0);
            }  
        }

    }//GEN-LAST:event_jLabelIngresarMouseClicked

    private void jLabelIngresarMouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jLabelIngresarMouseEntered
        ponerColor(jPanelIngresar);
    }//GEN-LAST:event_jLabelIngresarMouseEntered

    private void jLabelIngresarMouseExited(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jLabelIngresarMouseExited
        repintarColor(jPanelIngresar);
    }//GEN-LAST:event_jLabelIngresarMouseExited

    private void jTextFieldUsuarioKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldUsuarioKeyTyped
        validacionTotal.limitarCantidadChar(evt, jTextFieldUsuario, 15, 0);       
    }//GEN-LAST:event_jTextFieldUsuarioKeyTyped

    private void jLabelCerrarMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jLabelCerrarMouseClicked
        System.exit(0);
    }//GEN-LAST:event_jLabelCerrarMouseClicked

    private void jLabelAcercaDeMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jLabelAcercaDeMouseClicked
        new jInformation(this, true,"© 2018 Julian Castaño, reservados todos los derechos.").setVisible(true);
    }//GEN-LAST:event_jLabelAcercaDeMouseClicked

    private void jTextFieldUsuarioActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextFieldUsuarioActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextFieldUsuarioActionPerformed
//=======================================================================================================
    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Windows".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel("com.sun.java.swing.plaf.windows.WindowsLookAndFeel");
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(VentanaLogin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(VentanaLogin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(VentanaLogin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(VentanaLogin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new VentanaLogin().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private org.jdesktop.swing.animation.timing.evaluators.EvaluatorLine2D evaluatorLine2D1;
    private javax.swing.JLabel jLabelAcercaDe;
    private javax.swing.JLabel jLabelCerrar;
    private javax.swing.JLabel jLabelFondo;
    private javax.swing.JLabel jLabelIngresar;
    private javax.swing.JLabel jLabelTitulo;
    private javax.swing.JLabel jLabelimgContrasena;
    private javax.swing.JLabel jLabelimgUsuario;
    private javax.swing.JPanel jPanelIngresar;
    private javax.swing.JPanel jPanelLogin;
    private javax.swing.JPanel jPanelTitulo;
    private javax.swing.JPasswordField jPasswordField;
    private javax.swing.JTextField jTextFieldUsuario;
    // End of variables declaration//GEN-END:variables
}
