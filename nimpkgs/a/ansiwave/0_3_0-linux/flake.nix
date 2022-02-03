{
  description = ''ANSI art + MIDI music editor'';
  inputs.src-ansiwave-0_3_0-linux.flake = false;
  inputs.src-ansiwave-0_3_0-linux.type = "github";
  inputs.src-ansiwave-0_3_0-linux.owner = "ansiwave";
  inputs.src-ansiwave-0_3_0-linux.repo = "ansiwave";
  inputs.src-ansiwave-0_3_0-linux.ref = "refs/tags/0.3.0-linux";
  
  
  inputs."pararules".url = "path:../../../p/pararules";
  inputs."pararules".type = "github";
  inputs."pararules".owner = "riinr";
  inputs."pararules".repo = "flake-nimble";
  inputs."pararules".ref = "flake-pinning";
  inputs."pararules".dir = "nimpkgs/p/pararules";

  
  inputs."paramidi".url = "path:../../../p/paramidi";
  inputs."paramidi".type = "github";
  inputs."paramidi".owner = "riinr";
  inputs."paramidi".repo = "flake-nimble";
  inputs."paramidi".ref = "flake-pinning";
  inputs."paramidi".dir = "nimpkgs/p/paramidi";

  
  inputs."paramidi_soundfonts".url = "path:../../../p/paramidi_soundfonts";
  inputs."paramidi_soundfonts".type = "github";
  inputs."paramidi_soundfonts".owner = "riinr";
  inputs."paramidi_soundfonts".repo = "flake-nimble";
  inputs."paramidi_soundfonts".ref = "flake-pinning";
  inputs."paramidi_soundfonts".dir = "nimpkgs/p/paramidi_soundfonts";

  
  inputs."parasound".url = "path:../../../p/parasound";
  inputs."parasound".type = "github";
  inputs."parasound".owner = "riinr";
  inputs."parasound".repo = "flake-nimble";
  inputs."parasound".ref = "flake-pinning";
  inputs."parasound".dir = "nimpkgs/p/parasound";

  
  inputs."illwill".url = "path:../../../i/illwill";
  inputs."illwill".type = "github";
  inputs."illwill".owner = "riinr";
  inputs."illwill".repo = "flake-nimble";
  inputs."illwill".ref = "flake-pinning";
  inputs."illwill".dir = "nimpkgs/i/illwill";

  
  inputs."zippy".url = "path:../../../z/zippy";
  inputs."zippy".type = "github";
  inputs."zippy".owner = "riinr";
  inputs."zippy".repo = "flake-nimble";
  inputs."zippy".ref = "flake-pinning";
  inputs."zippy".dir = "nimpkgs/z/zippy";

  outputs = { self, nixpkgs, src-ansiwave-0_3_0-linux, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ansiwave-0_3_0-linux;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ansiwave-0_3_0-linux"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}