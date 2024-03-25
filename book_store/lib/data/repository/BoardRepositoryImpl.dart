import 'dart:convert';

import 'package:book_store/data/data_source/get_api/board_api.dart';
import 'package:book_store/domain/model/best_board_info.dart';
import 'package:book_store/domain/model/board_detail_info.dart';
import 'package:book_store/domain/model/board_info.dart';
import 'package:book_store/domain/model/reply_info.dart';
import 'package:flutter/material.dart';

import '../../domain/repository/board_repository.dart';

class BoardRepositoryImpl implements BoardRepository{
  final BoardApi _boardApi;

  BoardRepositoryImpl({required BoardApi boardApi}) : _boardApi = boardApi;

  @override
  Future<BoardDetailInfo> getBoard(int boardId, int userId) async {
    print('BoardRepository=> getBoard');
    try {
      final response = await _boardApi.getBoard(boardId, userId);
      if (response.statusCode == 200) {
        final jsonResult = jsonDecode(utf8.decode(response.bodyBytes));
        final jsonDataListString = jsonResult['data'];
        if (jsonDataListString != null) {
          if (jsonDataListString is String) {
            final jsonDataList = jsonDecode(jsonDataListString);
            BoardDetailInfo detailBoard =
            BoardDetailInfo.fromJson(jsonDataList);

            return detailBoard;
          } else {
            debugPrint('Error: jsonDataListString is not a String');
            return const BoardDetailInfo(
                boardId: 9999,
                boardTitle: '9999',
                boardContent: '9999',
                writer: '9999',
                likeCount: 9999,
                replyCount: 9999,
                createdDate: '9999',
                modifiedDate: '9999',
                userId: 9999,
                isLike: false,
                writerProfileImage: '');
          }
        } else {
          debugPrint('Error: jsonDataListString is null');
          // Handle the case where jsonDataListString is null
          return const BoardDetailInfo(
              boardId: 999,
              boardTitle: '999',
              boardContent: '999',
              writer: '999',
              likeCount: 999,
              replyCount: 999,
              createdDate: '999',
              modifiedDate: '999',
              userId: 999,
              isLike: false,
              writerProfileImage: '');
        }
      } else {
        debugPrint(
            'Error: Status code is not 200 (${response.statusCode})');
        throw Exception(
            "Failed to fetch store info. Status code: ${response.statusCode}");
      }
    } catch (e) {
      debugPrint('Error: $e');
      throw Exception("Failed to fetch store info: $e");
    }
  }

  @override
  Future<List<BoardInfo>> getBoardList(int userId) async {
    try {
      print('BoardRepository=>getBoardList');
      final response = await _boardApi.getBoardList(userId);

      if (response.statusCode == 200) {
        final jsonResult = jsonDecode(utf8.decode(response.bodyBytes));
        final jsonDataListString = jsonResult['data'];
        // Check if jsonDataListString is not null and is a string
        if (jsonDataListString != null) {
          if (jsonDataListString is String) {
            // Parse the string into a list of maps
            final jsonDataList = jsonDecode(jsonDataListString) as List;

            // Map each item in the list to a SimpleStore object
            List<BoardInfo> boardList = jsonDataList.map((jsonBoard) {
              print('jsonBoard : $jsonBoard');
              return BoardInfo.fromJson(jsonBoard as Map<String, dynamic>);
            }).toList();

            return boardList;
          } else {
            debugPrint('1111111111Error: jsonDataListString is not a String');
          }
        } else {
          debugPrint('22222222222Error: jsonDataListString is null');
        }

        // Return an empty list if jsonDataListString is null or not a string
        return [];
      } else {
        debugPrint('333333333333Error: Status code is not 200 (${response.statusCode})');
        throw Exception(
            "444444444444444Failed to fetch store info. Status code: ${response.statusCode}");
      }
    } catch (e) {
      debugPrint('@@@@@2Error: $e');
      return [];
    }
  }

  @override
  Future<List<ReplyInfo>> getBoardReply(int boarId) async {
    try {
      print('getBoardReply: @@@@@@@@@');
      final response = await _boardApi.getBoardReply(boarId);

      if (response.statusCode == 200) {
        final jsonResult = jsonDecode(utf8.decode(response.bodyBytes));
        final jsonDataListString = jsonResult['data'];
        // Check if jsonDataListString is not null and is a string
        if (jsonDataListString != null) {
          if (jsonDataListString is String) {
            // Parse the string into a list of maps
            final jsonDataList = jsonDecode(jsonDataListString) as List;

            // Map each item in the list to a SimpleStore object
            List<ReplyInfo> replyList = jsonDataList.map((jsonReply) {
              print('jsonReply : $jsonReply');
              return ReplyInfo.fromJson(jsonReply as Map<String, dynamic>);
            }).toList();

            return replyList;
          } else {
            debugPrint('1111111111Error: jsonDataListString is not a String');
          }
        } else {
          debugPrint('22222222222Error: jsonDataListString is null');
        }

        // Return an empty list if jsonDataListString is null or not a string
        return [];
      } else {
        debugPrint('333333333333Error: Status code is not 200 (${response.statusCode})');
        throw Exception(
            "444444444444444Failed to fetch store info. Status code: ${response.statusCode}");
      }
    } catch (e) {
      debugPrint('@@@@@2Error: $e');
      return [];
    }
  }

  @override
  Future<List<BoardInfo>> getInterestBoardList(int userId) async {
    try {
      print('BoardRepository=>getInterestBoardList');
      final response = await _boardApi.getInterestBoardList(userId);

      if (response.statusCode == 200) {
        final jsonResult = jsonDecode(utf8.decode(response.bodyBytes));
        final jsonDataListString = jsonResult['data'];
        // Check if jsonDataListString is not null and is a string
        if (jsonDataListString != null) {
          if (jsonDataListString is String) {
            // Parse the string into a list of maps
            final jsonDataList = jsonDecode(jsonDataListString) as List;

            // Map each item in the list to a SimpleStore object
            List<BoardInfo> interestBoardList = jsonDataList.map((jsonBoard) {
              return BoardInfo.fromJson(jsonBoard as Map<String, dynamic>);
            }).toList();

            return interestBoardList;
          } else {
            debugPrint('1111111111Error: jsonDataListString is not a String');
          }
        } else {
          debugPrint('22222222222Error: jsonDataListString is null');
        }

        // Return an empty list if jsonDataListString is null or not a string
        return [];
      } else {
        debugPrint('333333333333Error: Status code is not 200 (${response.statusCode})');
        throw Exception(
            "444444444444444Failed to fetch store info. Status code: ${response.statusCode}");
      }
    } catch (e) {
      debugPrint('@@@@@2Error: $e');
      return [];
    }
  }

  @override
  Future<List<BestBoardInfo>> getBestBoardList() async{
    try {
      print('BoardRepository=>getBestBoardList');
      final response = await _boardApi.getBestBoardList();

      if (response.statusCode == 200) {
        final jsonResult = jsonDecode(utf8.decode(response.bodyBytes));
        final jsonDataListString = jsonResult['data'];
        // Check if jsonDataListString is not null and is a string
        if (jsonDataListString != null) {
          if (jsonDataListString is String) {
            // Parse the string into a list of maps
            final jsonDataList = jsonDecode(jsonDataListString) as List;

            // Map each item in the list to a SimpleStore object
            List<BestBoardInfo> bestBoardList = jsonDataList.map((jsonBestBoard) {
              print('jsonBestBoard: $jsonBestBoard');
              return BestBoardInfo.fromJson(jsonBestBoard as Map<String, dynamic>);
            }).toList();
            return bestBoardList;
          } else {
            debugPrint('1111111111Error: jsonDataListString is not a String');
          }
        } else {
          debugPrint('22222222222Error: jsonDataListString is null');
        }

        // Return an empty list if jsonDataListString is null or not a string
        return [];
      } else {
        debugPrint('333333333333Error: Status code is not 200 (${response.statusCode})');
        throw Exception(
            "444444444444444Failed to fetch store info. Status code: ${response.statusCode}");
      }
    } catch (e) {
      debugPrint('@@@@@2Error: $e');
      return [];
    }
  }

}