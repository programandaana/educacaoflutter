import 'package:latlong2/latlong.dart';

class MapMarker {
  const MapMarker({
    required this.id,
    required this.nome,
    required this.endereco,
    required this.localizacao,
  });
  final int id;
  final String nome;
  final String endereco;
  final LatLng localizacao;
}

final _localizacoes = [];

final mapMarkers = [
  MapMarker(
      id: 1,
      nome: 'nome',
      endereco: 'endereco',
      localizacao: LatLng(-29.6782, -53.808801)),
  MapMarker(
      id: 1,
      nome: 'nome',
      endereco: 'endereco',
      localizacao: LatLng(-29.678157, -53.809218)),
  MapMarker(
      id: 1,
      nome: 'nome',
      endereco: 'endereco',
      localizacao: LatLng(-29.701746, -53.736185)),
  MapMarker(
      id: 1,
      nome: 'nome',
      endereco: 'endereco',
      localizacao: LatLng(-29.680878, -53.798946)),
  MapMarker(
      id: 1,
      nome: 'nome',
      endereco: 'endereco',
      localizacao: LatLng(-29.750476, -53.705353)),
  MapMarker(
    id: 1,
    nome: 'nome',
    endereco: 'endereco',
    localizacao: LatLng(-29.684932, -53.831149),
  ),
  MapMarker(
      id: 1,
      nome: 'nome',
      endereco: 'endereco',
      localizacao: LatLng(-29.668986, -53.817029)),
  MapMarker(
      id: 1,
      nome: 'nome',
      endereco: 'endereco',
      localizacao: LatLng(-29.71735, -53.763202)),
  MapMarker(
      id: 1,
      nome: 'nome',
      endereco: 'endereco',
      localizacao: LatLng(-29.705784, -53.804705)),
];
