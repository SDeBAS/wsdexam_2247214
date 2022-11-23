<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <title>
                    Employee Management System
                </title>
                <style>
                    h2
                    {
                        text-align:center;
                        padding:1rem;
                        font-family:"Poppins";
                        font-size:50px;
                    }

                    table
                    {
                        width:50%;
                        height:50%;
                        text-align: center;
                        margin-left: 24rem;
                        font-family:"Poppins";
                    }

                </style>
            </head>
            <body>
                <h2>Employee Details</h2>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>Name</th>
                        <th>Age</th>
                        <th>Salary</th>
                        <th>Email</th>
                        <th>MobNum</th>
                        <th>Designation</th>
                        <th>Promotion</th>
                    </tr>
                    <xsl:for-each select="Company/Employee">    
                    <tr>
                            <td>
                                <xsl:value-of select="emp_name" />
                            </td>
                            <td>
                                <xsl:value-of select="emp_age" />
                            </td>
                            <td>
                                <xsl:value-of select="emp_salary" />
                            </td>
                            <td>
                                <xsl:value-of select="emp_emailid" />
                            </td>
                            <td>
                                <xsl:value-of select="emp_Phonenum" />
                            </td>
                            <td>
                                <xsl:value-of select="emp_designation" />
                            </td>
                            <xsl:if test="emp_age &gt; 49">
                                <td>Associate Project Manager</td>
                            </xsl:if>

                            <xsl:if test="emp_age &gt; 40 and emp_age &lt; 50">
                                <td>Team Leader</td>
                            </xsl:if>

                            <xsl:if test="emp_age &lt; 40">
                                <td>Developer</td>
                            </xsl:if>
                            
                        </tr>
                        
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
