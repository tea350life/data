import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/edit_task_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class TasksWidget extends StatefulWidget {
  const TasksWidget({Key? key}) : super(key: key);

  @override
  _TasksWidgetState createState() => _TasksWidgetState();
}

class _TasksWidgetState extends State<TasksWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.9,
          end: 1,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<TasksRecord>>(
      stream: queryTasksRecord(
        queryBuilder: (tasksRecord) =>
            tasksRecord.where('uid', isEqualTo: currentUserUid),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: SpinKitFadingCircle(
                color: FlutterFlowTheme.of(context).primaryColor,
                size: 50,
              ),
            ),
          );
        }
        List<TasksRecord> taskColumnTasksRecordList = snapshot.data!;
        return Column(
          mainAxisSize: MainAxisSize.max,
          children: List.generate(taskColumnTasksRecordList.length,
              (taskColumnIndex) {
            final taskColumnTasksRecord =
                taskColumnTasksRecordList[taskColumnIndex];
            return Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
              child: InkWell(
                onTap: () async {
                  await showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    barrierColor: Color(0x990D070D),
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: MediaQuery.of(context).viewInsets,
                        child: Container(
                          height: 300,
                          child: EditTaskWidget(),
                        ),
                      );
                    },
                  ).then((value) => setState(() {}));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).cardBackground08,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Color(0x290D070D),
                        offset: Offset(0, 2),
                      )
                    ],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 8, 12, 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                              child: Container(
                                width: 36,
                                height: 36,
                                decoration: BoxDecoration(
                                  color: taskColumnTasksRecord.checked!
                                      ? FlutterFlowTheme.of(context)
                                          .tertiaryColor
                                      : Color(0x00FFFFFF),
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .checkboxBorder,
                                  ),
                                ),
                                child: Visibility(
                                  visible:
                                      taskColumnTasksRecord.checked ?? true,
                                  child: Icon(
                                    FFIcons.kcheck,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryIcon,
                                    size: 28,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                valueOrDefault<String>(
                                  taskColumnTasksRecord.text,
                                  'Test text',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: taskColumnTasksRecord.checked!
                                          ? FlutterFlowTheme.of(context)
                                              .primaryText60
                                          : FlutterFlowTheme.of(context)
                                              .primaryText,
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ).animateOnPageLoad(
                  animationsMap['containerOnPageLoadAnimation']!),
            );
          }),
        );
      },
    );
  }
}
