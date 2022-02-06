using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            System.Diagnostics.Trace.WriteLine("--------------------------------------------");

            BooleanSwitch aSwitch = new BooleanSwitch("ImportantSwitch", "Mostrar errores");
            System.Diagnostics.Trace.WriteLineIf(aSwitch.Enabled, string.Format("{0} : El BooleanSwitch esta habilitado!", DateTime.Now));

            TraceSwitch tSwitch = new TraceSwitch("LevelSwitch", "Niveles de traza");
            System.Diagnostics.Trace.WriteLineIf(tSwitch.TraceError, string.Format("ERROR {0}: El TraceSwitch es Error!", DateTime.Now));
            System.Diagnostics.Trace.WriteLineIf(tSwitch.TraceInfo, string.Format("Info {0}:El TraceSwitch es para informacion!", DateTime.Now));
            System.Diagnostics.Trace.WriteLineIf(tSwitch.TraceVerbose, string.Format("Verbose {0}:El TraceSwitch es para mensajes detallados!", DateTime.Now));
            System.Diagnostics.Trace.WriteLineIf(tSwitch.TraceWarning, string.Format("Warning {0}:El TraceSwitch es para advertencias!", DateTime.Now));

            SourceSwitch sSwitch = new SourceSwitch("SourceSwitch", "Mas niveles de traza");
            System.Diagnostics.Trace.WriteLineIf(sSwitch.ShouldTrace(TraceEventType.Critical), string.Format("Critical {0}: El SourceSwitch para criticos!", DateTime.Now));
            System.Diagnostics.Trace.WriteLineIf(sSwitch.ShouldTrace(TraceEventType.Error), string.Format("ERROR {0}: El SourceSwitch para Errores!", DateTime.Now));
            System.Diagnostics.Trace.WriteLineIf(sSwitch.ShouldTrace(TraceEventType.Information), string.Format("Information {0}: El SourceSwitch para inmformacion!", DateTime.Now));
            System.Diagnostics.Trace.WriteLineIf(sSwitch.ShouldTrace(TraceEventType.Resume), string.Format("Resume {0}: El SourceSwitch para resumen!", DateTime.Now));
            System.Diagnostics.Trace.WriteLineIf(sSwitch.ShouldTrace(TraceEventType.Start), string.Format("Start {0}: El SourceSwitch para comenzar!", DateTime.Now));
            System.Diagnostics.Trace.WriteLineIf(sSwitch.ShouldTrace(TraceEventType.Stop), string.Format("Stop {0}: El SourceSwitch para parar!", DateTime.Now));
            System.Diagnostics.Trace.WriteLineIf(sSwitch.ShouldTrace(TraceEventType.Suspend), string.Format("Suspend {0}: El SourceSwitch para suspender!", DateTime.Now));
            System.Diagnostics.Trace.WriteLineIf(sSwitch.ShouldTrace(TraceEventType.Transfer), string.Format("Transfer {0}: El SourceSwitch para transferir!", DateTime.Now));
            System.Diagnostics.Trace.WriteLineIf(sSwitch.ShouldTrace(TraceEventType.Verbose), string.Format("Verbose {0}: El SourceSwitch para mensajes detallados!", DateTime.Now));
            System.Diagnostics.Trace.WriteLineIf(sSwitch.ShouldTrace(TraceEventType.Warning), string.Format("Warning {0}: El SourceSwitch para advertencias!", DateTime.Now));
            
            System.Diagnostics.Trace.Flush();
        }

    }
}