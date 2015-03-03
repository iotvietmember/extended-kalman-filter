function df_dx = rigidBodyDynamicsDerivatives(v_Bx,v_By,v_Bz,omega_Bx,omega_By,omega_Bz,f_B_ox,f_B_oy,f_B_oz,mu_B_ox,mu_B_oy,mu_B_oz,f_B_cx,f_B_cy,f_B_cz,mu_B_cx,mu_B_cy,mu_B_cz,phi1,phi2,phi3,I_Bxx,I_Bxy,I_Bxz,I_Byy,I_Byz,I_Bzz,m,g)
%RIGIDBODYDYNAMICSDERIVATIVES
%    DF_DX = RIGIDBODYDYNAMICSDERIVATIVES(V_BX,V_BY,V_BZ,OMEGA_BX,OMEGA_BY,OMEGA_BZ,F_B_OX,F_B_OY,F_B_OZ,MU_B_OX,MU_B_OY,MU_B_OZ,F_B_CX,F_B_CY,F_B_CZ,MU_B_CX,MU_B_CY,MU_B_CZ,PHI1,PHI2,PHI3,I_BXX,I_BXY,I_BXZ,I_BYY,I_BYZ,I_BZZ,M,G)

%    This function was generated by the Symbolic Math Toolbox version 5.8.
%    03-Mar-2015 16:08:35

t2 = 1.0./m;
t3 = cos(phi1);
t4 = cos(phi3);
t5 = sin(phi1);
t6 = cos(phi2);
t7 = sin(phi3);
t8 = sin(phi2);
t9 = I_Bxy.^2;
t10 = I_Bxz.^2;
t11 = I_Byz.^2;
t12 = I_Bxx.*t11;
t13 = I_Byy.*t10;
t14 = I_Bzz.*t9;
t19 = I_Bxx.*I_Byy.*I_Bzz;
t20 = I_Bxy.*I_Bxz.*I_Byz.*2.0;
t15 = t12+t13+t14-t19-t20;
t16 = 1.0./t15;
t17 = I_Byy.^2;
t18 = I_Bzz.^2;
t21 = t11-I_Byy.*I_Bzz;
t22 = t16.*t21;
t23 = I_Bxy.*I_Bzz;
t31 = I_Bxz.*I_Byz;
t24 = t23-t31;
t25 = t16.*t24;
t26 = I_Bxy.*I_Byz;
t49 = I_Bxz.*I_Byy;
t27 = t26-t49;
t28 = I_Bxx.^2;
t29 = I_Bxy.*omega_Bz.*t18;
t30 = I_Bxx.*I_Bxz.*I_Byz.*omega_Bz;
t32 = t10-I_Bxx.*I_Bzz;
t33 = t16.*t32;
t34 = I_Bxx.*I_Byz;
t51 = I_Bxy.*I_Bxz;
t35 = t34-t51;
t36 = t16.*t35;
t37 = I_Bxz.*omega_By.*t9.*2.0;
t38 = I_Byz.*omega_Bx.*t9.*2.0;
t39 = I_Bxy.*omega_Bz.*t10.*2.0;
t40 = I_Bxy.*omega_Bz.*t11.*2.0;
t41 = I_Bxx.*I_Bxy.*I_Bxz.*omega_Bx;
t42 = I_Bxx.*I_Bxz.*I_Byy.*omega_By;
t43 = I_Bxx.*I_Byy.*I_Byz.*omega_Bx;
t44 = I_Bxx.*I_Byz.*I_Bzz.*omega_Bx;
t45 = I_Bxy.*I_Bxz.*I_Bzz.*omega_Bx;
t46 = I_Bxy.*I_Byy.*I_Byz.*omega_By;
t47 = I_Bxy.*I_Byz.*I_Bzz.*omega_By;
t48 = I_Bxz.*I_Byy.*I_Bzz.*omega_By;
t50 = t16.*t27;
t52 = t9-I_Bxx.*I_Byy;
t53 = t16.*t52;
df_dx = reshape([0.0,-omega_Bz,omega_By,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,omega_Bz,0.0,-omega_Bx,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-omega_By,omega_Bx,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,v_Bz,-v_By,t16.*(t29+t30+t38+t40+t42+t46+t47+t48-I_Byz.*omega_Bx.*t10.*2.0-I_Bxz.*omega_By.*t11.*2.0-I_Bxz.*omega_By.*t17-I_Bxx.*I_Bxy.*I_Byz.*omega_By-I_Bxy.*I_Bxz.*I_Byy.*omega_Bx.*2.0-I_Bxx.*I_Bxy.*I_Bzz.*omega_Bz+I_Bxy.*I_Bxz.*I_Bzz.*omega_Bx.*2.0-I_Bxy.*I_Byy.*I_Bzz.*omega_Bz-I_Bxz.*I_Byy.*I_Byz.*omega_Bz-I_Bxz.*I_Byz.*I_Bzz.*omega_Bz),-t16.*(I_Bxz.*omega_Bx.*t9.*-2.0+I_Bxx.*omega_Bz.*t10-I_Bxz.*omega_Bx.*t10.*2.0+I_Bxx.*omega_Bz.*t11-I_Byz.*omega_By.*t10.*2.0-I_Bzz.*omega_Bz.*t9-I_Bzz.*omega_Bz.*t10+I_Bxx.*omega_Bz.*t18-I_Byz.*omega_By.*t28-I_Bzz.*omega_Bz.*t28+I_Bxx.*I_Bxy.*I_Bxz.*omega_By+I_Bxx.*I_Bxy.*I_Byz.*omega_Bx.*2.0+I_Bxx.*I_Bxz.*I_Bzz.*omega_Bx.*2.0+I_Bxx.*I_Byy.*I_Byz.*omega_By-I_Bxy.*I_Bxz.*I_Byy.*omega_By+I_Bxx.*I_Byz.*I_Bzz.*omega_By+I_Bxy.*I_Bxz.*I_Bzz.*omega_By),t16.*(I_Bxx.*omega_By.*t9-I_Bxy.*omega_Bx.*t9.*2.0-I_Bxy.*omega_Bx.*t10.*2.0+I_Bxx.*omega_By.*t11-I_Byy.*omega_By.*t9-I_Byy.*omega_By.*t10-I_Byz.*omega_Bz.*t9.*2.0+I_Bxx.*omega_By.*t17-I_Byy.*omega_By.*t28-I_Byz.*omega_Bz.*t28+I_Bxx.*I_Bxy.*I_Byy.*omega_Bx.*2.0+I_Bxx.*I_Bxy.*I_Bxz.*omega_Bz+I_Bxx.*I_Bxz.*I_Byz.*omega_Bx.*2.0+I_Bxx.*I_Byy.*I_Byz.*omega_Bz+I_Bxy.*I_Bxz.*I_Byy.*omega_Bz+I_Bxx.*I_Byz.*I_Bzz.*omega_Bz-I_Bxy.*I_Bxz.*I_Bzz.*omega_Bz),0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,-v_Bz,0.0,v_Bx,t16.*(I_Bxz.*omega_Bx.*t11.*-2.0-I_Byz.*omega_By.*t9.*2.0+I_Byy.*omega_Bz.*t10+I_Byy.*omega_Bz.*t11-I_Byz.*omega_By.*t11.*2.0-I_Bzz.*omega_Bz.*t9-I_Bzz.*omega_Bz.*t11-I_Bxz.*omega_Bx.*t17+I_Byy.*omega_Bz.*t18-I_Bzz.*omega_Bz.*t17-I_Bxx.*I_Bxy.*I_Byz.*omega_Bx+I_Bxx.*I_Bxz.*I_Byy.*omega_Bx+I_Bxy.*I_Bxz.*I_Byy.*omega_By.*2.0+I_Bxy.*I_Byy.*I_Byz.*omega_Bx+I_Bxy.*I_Byz.*I_Bzz.*omega_Bx+I_Bxz.*I_Byy.*I_Bzz.*omega_Bx+I_Byy.*I_Byz.*I_Bzz.*omega_By.*2.0),-t16.*(t29-t30+t37+t39+t41+t43+t44+t45-I_Byz.*omega_Bx.*t10.*2.0-I_Bxz.*omega_By.*t11.*2.0-I_Byz.*omega_Bx.*t28-I_Bxx.*I_Bxy.*I_Byz.*omega_By.*2.0-I_Bxy.*I_Bxz.*I_Byy.*omega_Bx-I_Bxx.*I_Bxy.*I_Bzz.*omega_Bz-I_Bxy.*I_Byy.*I_Bzz.*omega_Bz+I_Bxy.*I_Byz.*I_Bzz.*omega_By.*2.0+I_Bxz.*I_Byy.*I_Byz.*omega_Bz-I_Bxz.*I_Byz.*I_Bzz.*omega_Bz),-t16.*(-I_Bxx.*omega_Bx.*t9-I_Bxx.*omega_Bx.*t11-I_Bxy.*omega_By.*t9.*2.0+I_Byy.*omega_Bx.*t9+I_Byy.*omega_Bx.*t10-I_Bxy.*omega_By.*t11.*2.0-I_Bxz.*omega_Bz.*t9.*2.0-I_Bxx.*omega_Bx.*t17-I_Bxz.*omega_Bz.*t17+I_Byy.*omega_Bx.*t28+I_Bxx.*I_Bxy.*I_Byy.*omega_By.*2.0+I_Bxx.*I_Bxy.*I_Byz.*omega_Bz+I_Bxx.*I_Bxz.*I_Byy.*omega_Bz+I_Bxy.*I_Byy.*I_Byz.*omega_Bz+I_Bxz.*I_Byy.*I_Byz.*omega_By.*2.0-I_Bxy.*I_Byz.*I_Bzz.*omega_Bz+I_Bxz.*I_Byy.*I_Bzz.*omega_Bz),0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-t5,t3,0.0,v_By,-v_Bx,0.0,-t16.*(I_Bxy.*omega_Bx.*t11.*-2.0-I_Byy.*omega_By.*t10-I_Byy.*omega_By.*t11+I_Bzz.*omega_By.*t9-I_Byz.*omega_Bz.*t10.*2.0-I_Byz.*omega_Bz.*t11.*2.0+I_Bzz.*omega_By.*t11-I_Bxy.*omega_Bx.*t18-I_Byy.*omega_By.*t18+I_Bzz.*omega_By.*t17+I_Bxx.*I_Bxy.*I_Bzz.*omega_Bx-I_Bxx.*I_Bxz.*I_Byz.*omega_Bx+I_Bxy.*I_Byy.*I_Bzz.*omega_Bx+I_Bxz.*I_Byy.*I_Byz.*omega_Bx+I_Bxy.*I_Bxz.*I_Bzz.*omega_Bz.*2.0+I_Bxz.*I_Byz.*I_Bzz.*omega_Bx+I_Byy.*I_Byz.*I_Bzz.*omega_Bz.*2.0),t16.*(-I_Bxx.*omega_Bx.*t10-I_Bxx.*omega_Bx.*t11-I_Bxy.*omega_By.*t10.*2.0+I_Bzz.*omega_Bx.*t9-I_Bxz.*omega_Bz.*t10.*2.0+I_Bzz.*omega_Bx.*t10-I_Bxz.*omega_Bz.*t11.*2.0-I_Bxx.*omega_Bx.*t18-I_Bxy.*omega_By.*t18+I_Bzz.*omega_Bx.*t28+I_Bxx.*I_Bxy.*I_Bzz.*omega_By+I_Bxx.*I_Bxz.*I_Byz.*omega_By+I_Bxx.*I_Bxz.*I_Bzz.*omega_Bz.*2.0+I_Bxy.*I_Byy.*I_Bzz.*omega_By-I_Bxz.*I_Byy.*I_Byz.*omega_By+I_Bxy.*I_Byz.*I_Bzz.*omega_Bz.*2.0+I_Bxz.*I_Byz.*I_Bzz.*omega_By),t16.*(t37-t38+t39-t40+t41-t42+t43+t44-t45-t46+t47-t48+I_Bxz.*omega_By.*t17-I_Byz.*omega_Bx.*t28-I_Bxx.*I_Bxy.*I_Byz.*omega_By+I_Bxy.*I_Bxz.*I_Byy.*omega_Bx-I_Bxx.*I_Bxz.*I_Byz.*omega_Bz.*2.0+I_Bxz.*I_Byy.*I_Byz.*omega_Bz.*2.0),0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t3.*t8,t5.*t8,t6,t2,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t2,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t2,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t22,t25,-t50,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t25,t33,t36,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-t16.*t27,t36,t53,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-t2,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-t2,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-t2,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-t22,-t25,t50,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-t25,-t33,-t36,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t50,-t36,-t53,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-g.*(t3.*t7+t4.*t5.*t6),-g.*(t5.*t7-t3.*t4.*t6),0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-omega_By.*t3-omega_Bz.*t5.*t8,-omega_By.*t5+omega_Bz.*t3.*t8,0.0,-g.*t3.*t4.*t8,-g.*t4.*t5.*t8,-g.*t4.*t6,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,omega_Bz.*t3.*t6,omega_Bz.*t5.*t6,-omega_Bz.*t8,-g.*(t4.*t5+t3.*t6.*t7),g.*(t3.*t4-t5.*t6.*t7),g.*t7.*t8,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0],[21, 21]);
