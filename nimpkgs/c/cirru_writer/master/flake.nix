{
  description = ''Code writer for Cirru syntax'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-cirru_writer-master.flake = false;
  inputs.src-cirru_writer-master.owner = "Cirru";
  inputs.src-cirru_writer-master.ref   = "refs/heads/master";
  inputs.src-cirru_writer-master.repo  = "writer.nim";
  inputs.src-cirru_writer-master.type  = "github";
  
  inputs."https://github.com/rosado/edn.nim".owner = "nim-nix-pkgs";
  inputs."https://github.com/rosado/edn.nim".ref   = "master";
  inputs."https://github.com/rosado/edn.nim".repo  = "https://github.com/rosado/edn.nim";
  inputs."https://github.com/rosado/edn.nim".type  = "github";
  inputs."https://github.com/rosado/edn.nim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/rosado/edn.nim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-cirru_writer-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-cirru_writer-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}