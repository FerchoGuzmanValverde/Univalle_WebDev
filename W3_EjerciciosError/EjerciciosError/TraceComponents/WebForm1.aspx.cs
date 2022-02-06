using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TraceComponents
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //TextWriterTraceListener myTextListener = new TextWriterTraceListener(File.Create(@"c:\InfoSisWeb.log"));
            //System.Diagnostics.Trace.Listeners.Add(myTextListener);
            System.Diagnostics.Debug.WriteLine(string.Format("{0}: Primero", DateTime.Now));
            System.Diagnostics.Trace.WriteLine(string.Format("{0}: Segundo", DateTime.Now));

            // Flush the output in a file
            //System.Diagnostics.Trace.Flush();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Trace.WriteLine("--------------------------------------------");

            System.Diagnostics.BooleanSwitch aSwitch = new System.Diagnostics.BooleanSwitch("ImportantSwitch", "Mostrar errores");
            System.Diagnostics.Trace.WriteLineIf(aSwitch.Enabled, string.Format("{0} : El BooleanSwitch esta habilitado!", DateTime.Now));

            System.Diagnostics.TraceSwitch tSwitch = new System.Diagnostics.TraceSwitch("LevelSwitch", "Niveles de traza");
            System.Diagnostics.Trace.WriteLineIf(tSwitch.TraceError, string.Format("ERROR {0}: El TraceSwitch es Error!", DateTime.Now));
            System.Diagnostics.Trace.WriteLineIf(tSwitch.TraceInfo, string.Format("Info {0}:El TraceSwitch es para informacion!", DateTime.Now));
            System.Diagnostics.Trace.WriteLineIf(tSwitch.TraceVerbose, string.Format("Verbose {0}:El TraceSwitch es para mensajes detallados!", DateTime.Now));
            System.Diagnostics.Trace.WriteLineIf(tSwitch.TraceWarning, string.Format("Warning {0}:El TraceSwitch es para advertencias!", DateTime.Now));

            System.Diagnostics.SourceSwitch sSwitch = new System.Diagnostics.SourceSwitch("SourceSwitch", "Mas niveles de traza");
            System.Diagnostics.Trace.WriteLineIf(sSwitch.ShouldTrace(System.Diagnostics.TraceEventType.Critical), string.Format("Critical {0}: El SourceSwitch para criticos!", DateTime.Now));
            System.Diagnostics.Trace.WriteLineIf(sSwitch.ShouldTrace(System.Diagnostics.TraceEventType.Error), string.Format("ERROR {0}: El SourceSwitch para Errores!", DateTime.Now));
            System.Diagnostics.Trace.WriteLineIf(sSwitch.ShouldTrace(System.Diagnostics.TraceEventType.Information), string.Format("Information {0}: El SourceSwitch para inmformacion!", DateTime.Now));
            System.Diagnostics.Trace.WriteLineIf(sSwitch.ShouldTrace(System.Diagnostics.TraceEventType.Resume), string.Format("Resume {0}: El SourceSwitch para resumen!", DateTime.Now));
            System.Diagnostics.Trace.WriteLineIf(sSwitch.ShouldTrace(System.Diagnostics.TraceEventType.Start), string.Format("Start {0}: El SourceSwitch para comenzar!", DateTime.Now));
            System.Diagnostics.Trace.WriteLineIf(sSwitch.ShouldTrace(System.Diagnostics.TraceEventType.Stop), string.Format("Stop {0}: El SourceSwitch para parar!", DateTime.Now));
            System.Diagnostics.Trace.WriteLineIf(sSwitch.ShouldTrace(System.Diagnostics.TraceEventType.Suspend), string.Format("Suspend {0}: El SourceSwitch para suspender!", DateTime.Now));
            System.Diagnostics.Trace.WriteLineIf(sSwitch.ShouldTrace(System.Diagnostics.TraceEventType.Transfer), string.Format("Transfer {0}: El SourceSwitch para transferir!", DateTime.Now));
            System.Diagnostics.Trace.WriteLineIf(sSwitch.ShouldTrace(System.Diagnostics.TraceEventType.Verbose), string.Format("Verbose {0}: El SourceSwitch para mensajes detallados!", DateTime.Now));
            System.Diagnostics.Trace.WriteLineIf(sSwitch.ShouldTrace(System.Diagnostics.TraceEventType.Warning), string.Format("Warning {0}: El SourceSwitch para advertencias!", DateTime.Now));

            System.Diagnostics.Trace.Flush();
        }
    }
}