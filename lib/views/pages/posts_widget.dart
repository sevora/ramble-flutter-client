import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
// import '/flutter_flow/flutter_flow_widgets.dart';
import '/views/reusable/post_widget.dart';
import '/views/reusable/post_creator_widget.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';

class PostsWidget extends StatelessWidget {
  const PostsWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        // key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        floatingActionButton: Align(
          alignment: const AlignmentDirectional(1.0, 1.0),
          child: FloatingActionButton(
            onPressed: () {
              print('FloatingActionButton pressed ...');
            },
            backgroundColor: FlutterFlowTheme.of(context).orangePeel,
            elevation: 8.0,
            child: Icon(
              Icons.add_rounded,
              color: FlutterFlowTheme.of(context).info,
              size: 24.0,
            ),
          ),
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                  child: PostCreatorWidget(profileImageURL: 'https://i.imgflip.com/5qke6k.jpg'),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: ListView(
                      padding: EdgeInsets.zero,
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: [
                        const PostWidget(
                            userName: '@goodcat',
                            displayName: 'Smirkly',
                            imageURL:
                            'https://i.imgflip.com/5qke6k.jpg',
                            content:
                            'Meow meow meow meow, meow, meow, meow meow meow. Meow meow meow meow.',
                            isLiked: true,
                            likeCount: 350,
                            commentCount: 20,
                            profileImageURL: 'https://i.imgflip.com/5qke6k.jpg',
                        ),
                       const PostWidget(
                            userName: '@not_a_user',
                            displayName: 'Le Placeholder',
                            imageURL: 'https://i.imgflip.com/5qke6k.jpg',
                            profileImageURL: 'https://i.imgflip.com/5qke6k.jpg',
                            isLiked: false,
                            likeCount: 120,
                            commentCount: 10,
                          ),
                       const PostWidget(
                            userName: '@fortnite_lover',
                            displayName: 'Victory Royale',
                            content:
                            'Number 1. Victory Royale,\nYeah Fortnite we bout to get down (get down)',
                            isLiked: false,
                            likeCount: 420,
                            commentCount: 50,
                            profileImageURL:
                            'https://i.imgflip.com/5qke6k.jpg',
                          ),
                        Divider(
                          thickness: 2.0,
                          color: FlutterFlowTheme.of(context).alternate,
                        ),
                      ].divide(const SizedBox(height: 10.0)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}