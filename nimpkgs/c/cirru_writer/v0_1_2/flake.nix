{
  description = ''Code writer for Cirru syntax'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-cirru_writer-v0_1_2.flake = false;
  inputs.src-cirru_writer-v0_1_2.owner = "Cirru";
  inputs.src-cirru_writer-v0_1_2.ref   = "refs/tags/v0.1.2";
  inputs.src-cirru_writer-v0_1_2.repo  = "writer.nim";
  inputs.src-cirru_writer-v0_1_2.type  = "github";
  
  inputs."https://github.com/rosado/edn.nim".dir   = "nimpkgs/h/https://github.com/rosado/edn.nim";
  inputs."https://github.com/rosado/edn.nim".owner = "riinr";
  inputs."https://github.com/rosado/edn.nim".ref   = "flake-pinning";
  inputs."https://github.com/rosado/edn.nim".repo  = "flake-nimble";
  inputs."https://github.com/rosado/edn.nim".type  = "github";
  inputs."https://github.com/rosado/edn.nim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/rosado/edn.nim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-cirru_writer-v0_1_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-cirru_writer-v0_1_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}